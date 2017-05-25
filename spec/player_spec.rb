require 'player'

describe Player do
  subject(:player) { described_class.new('Skeletor') }




  it ' should return the players name' do
    expect(player.name).to eq('Skeletor')
  end
end
