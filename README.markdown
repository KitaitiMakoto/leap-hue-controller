Leap Hue Controller
===================

Start
-----

    $ bundle exec ruby ./bin/leap-hue-controller

Manipulation
------------

Use a hand to manipulate Philips Hue with Leap Motion Controller.

### Hue ###

Face your palm upward/inward/downward to change hue.

### Saturation ###

Change the number of fingers held up.

### Brightness ###

Make hand far away to increase linghtening.

Movie
-----

http://youtu.be/WjlF6BD04zs

Slides
------

http://goo.gl/QGQTcW

Setting up
----------

### Prerequisites ###

* Ruby
* Leap Motion Controller
* Philips Hue

### 1. Installing Bundler ###

    $ gem install bundler

### 2. Installing dependent RubyGems ###

    $ bundle install --path=deps

### 3. Setting up Hue ###

1. Press button on Hue bridge
2. Execute some Hue command:  
   `$ bundle exec hue all on`

### 4. Starting program ###

    $ bundle exec ruby ./bin/leap-hue-controller
