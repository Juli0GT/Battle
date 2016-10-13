require 'player'
describe Player do
  subject(:player) { described_class.new(:name) }

  it 'returns the name of the player' do
    expect(player.name).to eq (:name)
  end

  # context 'when attacked' do
    it ' can reduce players HP' do
     expect{player.reduce_hp(10)}.to change {player.hp}.by (-10)
    end
  end
