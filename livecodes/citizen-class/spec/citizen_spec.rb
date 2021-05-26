require_relative '../citizen.rb'

describe Citizen do
  describe '#can_vote?' do
    it 'returns true when given an 18 year old citizen' do
      # we need to instantiate a citizen
      citizen = Citizen.new('Ayaka', 'Asano', 18)
      actual = citizen.can_vote?
      expect(actual).to eq(true)
    end

    it 'returns false when given an 16 year old citizen' do
      citizen = Citizen.new('Ayaka', 'Asano', 16)
      actual = citizen.can_vote?
      expect(actual).to eq(false)
    end
  end
end