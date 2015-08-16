module MarsRoverApp

  E = "east"
  N = "north"
  S = "south"
  W = "west"

  CLOCKWISE_DIRECTION = [N, E, S, W]
  ANTI_CLOCKWISE_DIRECTION = [N, W, S, E]
  class Rover
    #rover models a mars rover with position direction and commands to be obeyed
    attr_reader :direction, :x_cordinate, :y_cordinate
    def initialize(x_cordinate, y_cordinate, direction)
      @x_cordinate = x_cordinate
      @y_cordinate = y_cordinate
      @direction = direction
    end

    def command(command)
      case command
      when "R"
        clockwise_rotation = (CLOCKWISE_DIRECTION.index(@direction) + 1) % 4
        @direction = CLOCKWISE_DIRECTION[clockwise_rotation]
      
      when "L"
        anti_clockwise_rotation = (ANTI_CLOCKWISE_DIRECTION.index(@direction) + 1) % 4
        @direction = ANTI_CLOCKWISE_DIRECTION[anti_clockwise_rotation]
      
      when "M"
        @x_cordinate = 1
      end
    end
  end
end