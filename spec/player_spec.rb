require 'player'
describe Player do
  subject(:player) { described_class.new(:name) }

  it 'returns the name of the player' do
    expect(player.name).to eq (:name)
  end

  context 'when attacked' do
    it 'reduces player 2\'s HP by 10' do
      expect{player.attack}.to change {player.hp}.by -10
    end
  end

end
