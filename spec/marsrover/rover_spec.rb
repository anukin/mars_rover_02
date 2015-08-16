require 'spec_helper'
module MarsRoverApp
  describe "rover" do
    context "movement" do
      let(:rover) { Rover.new(0, 0, E) }
      let(:rover_facing_west) { Rover.new(1, 1, W) }
      let(:rover_facing_north) {Rover.new(0, 0, N)}
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

      it "should move in reverse along x direction when given M if facing west" do
        rover_facing_west.command("M")
        expect(rover_facing_west.x_cordinate).to eq(0)
      end

      it "should move forward along y direction when given M if facing north" do
        rover_facing_north.command("M")
        expect(rover_facing_north.y_cordinate).to eq(1)
      end
    end
  end
end
