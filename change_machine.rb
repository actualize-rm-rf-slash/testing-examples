require "rspec"

class ChangeMachine
end

RSpec.describe ChangeMachine do
  describe "#to_coins" do
    it "shoud return [1] if given 1" do
      machine = ChangeMachine.new
      expect(machine.to_coins(1)).to eq([1])
    end
  end  
end
