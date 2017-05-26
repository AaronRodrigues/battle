require 'player'

describe Player do
  subject(:player) { described_class.new('Skeletor') }
  subject(:player2) { described_class.new('He-man') }

  it ' should return the players name' do
    expect(player.name).to eq('Skeletor')
  end

  describe '#hitpoints' do
    it 'should have a hitpoints method which initializes with 100HP' do
      expect(player.hitpoints).to eq(100)
    end
  end

  describe '#take_damage' do
  	it 'should take 10 points of damage from HP' do
  		expect{player.take_damage}.to change{player.hitpoints}.by -10
  	end
  end


end
