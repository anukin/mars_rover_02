require 'spec_helper'
module MarsRoverApp
  describe "rover" do
    context "movement" do
      let(:rover) { Rover.new(0, 0, E) }
      it "should change direction clockwise if command is R" do
        rover.command("R")
        expect(rover.direction).to eq(S)
      end

      it "should change its direction anticlockwise if command is L" do
        rover.command("L")
        expect(rover.direction).to eq(N)
      end

      it "should move forward along x direction when given M" do
        rover.command("M")
        expect(rover.x_cordinate).to eq(1)
      end
    end
  end
end
