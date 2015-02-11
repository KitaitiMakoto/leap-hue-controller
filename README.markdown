Leap Hue Controller
===================

Start
-----

    $ bundle exec ruby ./bin/leap-hue-controller
    $ bundle exec ruby ./bin/leap-hue-controller --transition-duration=0.4
    $ bundle exec ruby ./bin/leap-hue-controller --delay=0.7
    $ bundle exec ruby ./bin/leap-hue-controller --transition-duration=0.2 --delay=1

Press ctrl+C to stop.

### Options ###

#### transition-duration ####

Duration to transite to target state(hue, saturation brightness) in seconds. Defaults to 0.4.
If you want to make lights respond more quickly, set smaller value.

#### delay ####
Delayed time to change the state of a light from previous one in seconds. Defaults to 0.
If you want to delay the timing each light responds to your manipulation, set positive value.

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

### 2. Cloning repository ###

    $ git clone https://github.com/KitaitiMakoto/leap-hue-controller.git
    $ cd leap-hue-controller

### 3. Installing dependent RubyGems ###

    $ bundle install --path=deps

### 4. Setting up Hue ###

1. Press button on Hue bridge
2. Execute some Hue command:  
   `$ bundle exec hue all on`

### 5. Starting program ###

    $ bundle exec ruby ./bin/leap-hue-controller
