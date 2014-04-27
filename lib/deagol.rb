require 'execjs'
require 'fileutils'
require 'gollum-lib'
require 'liquid'

EXTENSION = '.html'

class Gollum::Page
  alias :original_url_path :url_path

  def url_path
    "#{original_url_path}#{EXTENSION}"
  end
end

wiki = Gollum::Wiki.new(ARGV[0] || Dir.pwd)
template_as_string = File.read(File.expand_path('deagol/templates/misty-mountains.liquid', __dir__))

Dir.mktmpdir do |tmp_dir|
  wiki.pages.each do |page|
    basename_without_ext = page.path[0...-File.extname(page.path).length]
    basename_without_ext = 'index' if basename_without_ext == 'Home'
    path = File.join(tmp_dir, "#{basename_without_ext}#{EXTENSION}")

    FileUtils.mkdir_p(File.dirname(path))
    File.open(path, 'w+') do |f|
      templated_contents = Liquid::Template.parse(template_as_string).render("contents" => page.formatted_data)
      f.write(templated_contents)
    end

    # TODO: Use execjs to add the contents of the page to the index.
  end

  # TODO: Serialise the index from Lunr here to a JSON file.

  FileUtils.rm_rf('/tmp/docs')
  FileUtils.cp_r(tmp_dir, '/tmp/docs')
end
