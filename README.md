# Adafruit IO API Documentation

Repository of documentation for Adafruit IO's HTTP and MQTT API. This is a fork of the [Slate documentation project](https://github.com/lord/slate). Slate is a set of templates and conventions applied to [the middleman static site generator](https://middlemanapp.com/), so our documentation source mostly [markdown formatted text](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) and some Ruby, but the output is static HTML, css, and javascript.

You can visit the live documentation site at https://io.adafruit.com/api/docs/#adafruit-io

## Building locally

To build this project locally:


1. Fork this repository on GitHub.

2. Clone your *forked* repository:

`git clone git@github.com:YOURUSERNAME/Adafruit_IO_Documentation.git`

3.  `cd Adafruit_IO_Documentation`

4. Next, you can initialize and start Slate. You can either do this with [Docker](https://www.docker.com) or [Vagrant](https://www.vagrantup.com).

### using Docker

To run Slate:

`docker-compose up`

The API documentation will be located at [http://localhost:4567/](http://localhost:4567/)

Building a static copy of the documentation into `build`:

`docker run --rm -v $PWD:/usr/src/app/source -w /usr/src/app/source slate_app bundle exec middleman build --clean`

### using Vagrant

To run slate:
 `vagrant up`.

## Contributing

Contributions are welcome! 

This project is based on [slate](https://github.com/lord/slate). All source for the documentation sections are in Markdown formatted text files in the [source/includes](https://github.com/adafruit/Adafruit_IO_Documentation/tree/master/source/includes) directory.

If you see a change you'd like to make, you can fork this repository, commit your changes to your copy of the project, and submit it as a pull request. If you have a question or find that something is missing or incorrectly documented, you can let us know by [creating a new issue](https://github.com/adafruit/Adafruit_IO_Documentation/issues) on this project.
