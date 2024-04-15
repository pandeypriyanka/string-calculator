require './lib/calculator.rb'

RSpec.describe Calculator do

  it 'should returns 0 if string is empty' do
    expect(Calculator.add('')).to eq(0)
  end

  it "should returns 1 when input is  1" do
    expect(Calculator.add('1')).to eq(1)
  end

  it "should returns 2 when input is 2" do
    expect(Calculator.add('2')).to eq(2)
  end

  it "should returns 3 when input is 1,2" do
    expect(Calculator.add('1,2')).to eq(3)
  end

  it "should returns 6 when input is 1,2,3" do
    expect(Calculator.add('1,2,3')).to eq(6)
  end

  it "should returns 6 when input is '1\n2,3'" do
    expect(Calculator.add('1\n2,3')).to eq(6)
  end

  it "should returns 3 when input is '//;\n1;2'" do
    expect(Calculator.add('//;\n1;2')).to eq(3)
  end

  it 'should throw error when input contains a negative number' do
    expect { Calculator.add('-1') }.to raise_error('negative numbers not allowed -1')
  end

  it "should throw error when input is negative '1,-3'" do
    expect { Calculator.add('1,-3') }.to raise_error('negative numbers not allowed -3')
  end

  it 'should throw error when input contains multiple negative numbers' do
    expect { Calculator.add('2, -1, 4, -6') }.to raise_error('negative numbers not allowed -1, -6')
  end

end
