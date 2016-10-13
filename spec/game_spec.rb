require 'game'

describe Game do
  subject(:game) { described_class.new("name1", "name2") }
  let(:player1) { double(:player)}
  let(:player2) { double(:player)}

  it 'generates two players' do
    expect(game.player1).to be_a_kind_of Player
    expect(game.player2).to be_a_kind_of Player
  end

  context 'when a player being attacked' do
    it 'makes an attack' do
      expect(game.player2).to receive(:reduce_hp)
      game.attack_player
    end

    it 'changes the message displayed' do
      game.attack_player
      expect(game.message).to eq("You have attacked name2.  They are very angry.")
    end

    it 'changes the victim being attacked' do
      game.change_victim
      expect(game.victim.name).to eq("name1")
    end
  end
end
