require 'player'

describe Player do
  let(:larry) { described_class.new('Larry') }

  context 'adding player names as attributes' do

    it 'adds name' do
      expect(larry.name).to eq('Larry')
    end
  end

context '#sustain_damage' do

  it 'Reduces opponents HP by 10' do
    larry.sustain_damage
      expect{ larry.sustain_damage }.to change{ larry.health }.by(-10)
      end
  end
end
