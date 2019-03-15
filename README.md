# Adafruit IO API Documentation

Repository of documentation for Adafruit IO's HTTP and MQTT API.


## Contributing

Contributions are welcome!

  

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

  
This project is based on [slate](https://github.com/lord/slate).

