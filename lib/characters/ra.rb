require_relative "character"

class Ra < Character
  include Crowd_Control
end
RA = Ra.new("Ra")