require 'rspec'
require 'towers_of_hanoi'

describe Tower do
  describe "#initialize" do
    subject(:tower) {Tower.new}
    it "creates 3 piles. 1 of them has discs in order (from big to small piece)" do
      expect(tower.piles).to eq(([
      [3,2,1],
      [],
      []
    ]))
    end
  end
  describe "#move" do
    it "prompts the user to select the disc and move the disc to corresponding file" do
      expect(tower.move(start_pos,end_pos)).to eq()
    end
  end
end

# tower = Tower.new