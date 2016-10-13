require 'game'

describe Game do
  subject(:game) { described_class.new("name1", "name2") }
  let(:player1) { double(:player)}
  let(:player2) { double(:player)}

  it 'makes an attack' do
    expect(game.player2).to receive(:reduce_hp)
    game.attack_player_2
  end

  it 'generates two players' do
    expect(game.player1).to be_a_kind_of Player
    expect(game.player2).to be_a_kind_of Player
  end

end
