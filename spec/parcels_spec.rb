require 'rspec'
require 'parcels'

describe 'Parcel' do
  it 'creates a new parcel instance and gives dimensions and weight to the new parcel' do
    test_parcel = Parcel.new 10, 5, 3, 10
    test_parcel.should be_an_instance_of Parcel
  end

  describe '#volume' do
    it 'gives the volume of a parcel' do
      test_parcel = Parcel.new 10, 5, 3, 10
      test_parcel.volume.should eq 150
    end
  end

  describe '#cost_to_ship' do
    it 'multiplies the dimensions by weight by 10 to give the cost to ship for a parcel' do
      test_parcel = Parcel.new 10, 5, 3, 10
      test_parcel.cost_to_ship.should eq '-G-15000 guilders'
    end
  end

end
