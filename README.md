# Déagol - A static documentation generator with search

> **Déagol is a work-in-progress. The below README is a decription of what will become `v1.0.0`. Please feel free to contribute and/or try `master` out in the meantime!**

Déagol is a tool for generating static documentation. It takes a [Gollum wiki](https://github.com/gollum/gollum) in, and a static site comes out. Déagol adds many desirable features atop the normal Gollum wiki:

* **Generates Static Output** - The output from Déagol is completely static HTML, allowing you to distribute and host your documentation easily.
* **Search** - We use the excellent [Lunr.js](http://lunrjs.com/) to build an offline index for all your Wiki pages, and use that to provide search for your static documentation.
* **Site Templates** - Déagol allows you to define templates for your site using the [Liquid](https://github.com/Shopify/liquid) template engine. It  comes with a default template that has a clean and responsive design which you can use as is, or build atop of!
* **GitHub Pages support** - Déagol has a single command which you can use to generate and upload your documentation to GitHub Pages.
* **Format agnostic** - Thanks to Gollum, you can write your documentation in almost any format you can imagine (Markdown, GFM Markdown, Textile, ReStructuredText, MediaWiki, and many others!)

## Quick Start

Install Déagol via RubyGems:

```sh
gem install deagol
```

Now, in the root of any Gollum based Wiki, you can generate static documentation:

```sh
deagol generate
```

Or, you can deploy straight to the GitHub Pages branch of the current repository:

```sh
deagol deploy
```

For more commands, and instructions, run the `deagol help` command.

## Documentation (And Demo!)

Dégol eats its own dog food and has documentation available at https://nathankleyn.github.io/deagol which is generated using itself. You can find the raw source of the documentation at https://github.com/nathankleyn/deagol-docs.

## Developing Dégol

Dégol is written in Ruby. Please attempt to adhere strictly to the [GitHub Ruby Styleguide](https://github.com/styleguide/ruby), and document all methods using [TomDoc](http://tomdoc.org/). All releases are versioned using [Semantic Versioning](http://semver.org/).

All unit tests are written using [RSpec](https://relishapp.com/rspec), and integration tests use [Cucumber](http://cukes.info/) with RSpec expectations.

To contribute, please follow the guide in [CONTRIBUTING.md]. I'll do our best to accept any pull requests in a timely fashion, and will endeavour to give you the love and admiration your work deserves!

## What's With The Name?

**Geeky Explanation**: In *The Lord of the Rings*, Déagol is the relative of Sméagol, whom you all know by a better name: Gollum.
**Slightly Less Geeky Explanation**: It's an admittedly poor excuse to use a non-ASCII character in a project name.

## License

Dégol is licensed with the simple and permissive MIT license. You can find a copy of this license both in the root of this repository, and in the Gem file that you can download from RubyGems.
