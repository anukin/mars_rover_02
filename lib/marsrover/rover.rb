module MarsRoverApp
  R = "right"
  E = "east"
  N = "north"
  class Rover
    #rover models a mars rover with position direction and commands to be obeyed
    attr_reader :direction
    def initialize(x_cordinate, y_cordinate, direction)
      @x_cordinate = x_cordinate
      @y_cordinate = y_cordinate
      @direction = direction
    end

    def command(command)
      @direction = N
    end
  end
end