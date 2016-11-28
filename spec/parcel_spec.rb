require('pry')
require('parcel')
require('rspec')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume based on inputted sides') do
      test_volume = Parcel.new(12, 20, 20, 1, "Snails Pace")
      expect(test_volume.volume()).to(eq(4800))
    end
  end
  describe('#cost_to_ship') do
    it('returns cost based on rate and volume') do
      test_cost = Parcel.new(20, 20, 25, 100, "Donkey Back")
      expect(test_cost.cost_to_ship()).to(eq('400005.00'))
    end
  end
end
