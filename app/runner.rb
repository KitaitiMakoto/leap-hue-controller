require_relative 'listener'
require_relative 'lighter'

class Runner
  OPTIONS = {
    "transition-duration" => 0.4,
    "delay" => 0
  }

  def initialize(options = {})
    @options = OPTIONS.merge(options)
    @lighter = Lighter.new(transition_duration: @options['transition-duration'], delay: @options['delay'])
    @listener = Listener.new(lighter: @lighter)
  end

  def run
    $stderr.puts "Start!(#{@options})"
    @listener.start
  end
end
