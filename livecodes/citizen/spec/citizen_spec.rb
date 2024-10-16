require_relative '../citizen'

describe Citizen do
  describe '#initialize' do # Citizen.new
    it 'returns an instance of Citizen' do
      arisa = Citizen.new('Arisa', 'Segawa', 19)
      expect(arisa).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'returns true when the citizen is 18 years old' do
      arisa = Citizen.new('Arisa', 'Segawa', 18)
      expect(arisa.can_vote?).to be_truthy
    end

    it 'returns false when the citizen is 17 years old' do
      arisa = Citizen.new('Arisa', 'Segawa', 17)
      expect(arisa.can_vote?).to be_falsy
    end
  end

  describe '#full_name' do
    it 'returns the capitalized full name' do
      arisa = Citizen.new('arisA', 'sEGawa', 17)
      expect(arisa.full_name).to eq('Arisa Segawa')
    end
  end
end