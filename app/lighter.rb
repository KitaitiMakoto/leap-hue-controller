require 'hue'

class Lighter
  MAX_HUE = 65535

  attr_reader :transiting

  def initialize(transition_duration:)
    @transition_duration = transition_duration
    @transiting = false
    @lights = Hue::Client.new.lights
  end

  def light(hue:, saturation: nil, brightness: nil)
    @transiting = true
    EM.add_timer @transition_duration do
      @transiting = false
    end
    params = {hue: hue}
    params[:sat] = saturation if saturation
    params[:bri] = brightness if brightness
    $stderr.puts params.inspect if $DEBUG or $VERBOSE
    @lights.each do |light|
      light.set_state(params, (@transition_duration * 10).round)
    end
  end
end
