require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }

  describe '#initialize' do
    it 'Sets current_player to player 1' do
      expect(game.current_player).to eq player1
    end
  end

  describe '#player_one' do
    it 'saves player one as an attribute' do
      expect(game.player_one).to eq(player1)
    end
  end

  describe '#player_two' do
    it 'saves player two as an attribute' do
      expect(game.player_two).to eq(player2)
    end
  end

  describe '#attack' do
    it 'calls sustain_damage on player' do
      allow(player2).to receive(:sustain_damage)
      game.attack
      expect(player2).to have_received(:sustain_damage)
    end
  end

  describe '#switch_turn' do
    it 'Alternates current_player' do
      game.switch_turn
      expect(game.current_player).to eq player2
    end
  end
end
