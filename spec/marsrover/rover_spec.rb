require 'spec_helper'
module MarsRoverApp
  describe "rover" do
    context "movement" do
      it "should change direction clockwise if command is R" do
        rover = Rover.new(0, 0, E)
        rover.command(R)
        expect(rover.direction).to eq(N)
      end
    end
  end
end
