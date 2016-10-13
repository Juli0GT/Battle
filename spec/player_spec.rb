require 'player'
describe Player do
  subject(:player) { described_class.new(:name) }

it 'returns the name of the player' do
  expect(player.name).to eq (:name)
end

end
