require 'hue'

class Lighter
  MAX_HUE = 65535

  attr_reader :transiting

  def initialize(transition_duration:)
    @transition_duration = transition_duration
    @transiting = false
    @light = Hue::Client.new.lights.first
  end

  def light(hue:, saturation: nil, brightness: nil)
    params = {hue: hue}
    params[:sat] = saturation if saturation
    params[:bri] = brightness if brightness
    $stderr.puts params.inspect if $DEBUG or $VERBOSE
    @light.set_state(params, (@transition_duration * 10).round)
  end
end
