require './lib/calculator.rb'

RSpec.describe Calculator do

  it 'returns 0 if string is empty' do
    expect(Calculator.add('')).to eq(0)
  end

  it "returns 1 when input is  1" do
    expect(Calculator.add('1')).to eq(1)
  end

  it "returns 2 when input is 2" do
    expect(Calculator.add('2')).to eq(2)
  end

end
