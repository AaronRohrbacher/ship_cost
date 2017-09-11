require('rspec')
require('pry')
require('parcels')


parcel = Parcel.new(4, 4, 4, 2)
describe("Parcel#volume") do

  it('take the sides of package and calculate the volume') do
    expect(parcel.volume).to eq(64)
  end

end

describe("Parcel#ship_cost") do
  parcel = Parcel.new(4, 4, 4, 2)
  it('determine price based on volume and weigth') do
    expect(parcel.ship_cost(7)).to eq(8)
  end
  it('determine price based on volume and weigth') do
    expect(parcel.ship_cost(2)).to eq(18)
  end
  it('determine price based on volume and weigth') do
    expect(parcel.ship_cost(10)).to eq(3)
  end

  it('determine price based on volume and weigth') do
    parcel = Parcel.new(10, 10, 10, 4)
    expect(parcel.ship_cost(2)).to eq(21)
  end
  it('determine price based on volume and weigth') do
    parcel = Parcel.new(10, 10, 10, 4)
    expect(parcel.ship_cost(7)).to eq(11)
  end
  it('determine price based on volume and weigth') do
    parcel = Parcel.new(10, 10, 10, 4)
    expect(parcel.ship_cost(10)).to eq(6)
  end
end
