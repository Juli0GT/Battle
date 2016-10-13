require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player)}
  let(:player2) { double(:player)}


  # before do
  #   allow(player1).to receive (:hp) {100}
  #   allow(player2).to receive (:hp) {100}
  # end

  it "makes an attack" do
    # expect{ game.attack(player2) }.to change {player2.hp}.by (-10)
    # allow(player2).to receive(:reduce_hp).with(1).arguments
    # game.attack(player2)
    expect(player2).to receive(:reduce_hp)
    game.attack(player2)
  end

end
