require_relative '../lib/00_multiples'

describe 'the is_multiple_of_3_or_5? method' do
  it 'should return true when an integer is a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it 'should return false when an integer is NOT a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(8)).to eq(false)
  end
end

describe 'the sum_of_3_or_5_multiples method' do
  it 'should return the correct sum for a given final number' do
    expect(sum_of_3_or_5_multiples(10)).to eq(23) # 3 + 5 + 6 + 9 = 23
    expect(sum_of_3_or_5_multiples(11)).to eq(33) # 3 + 5 + 6 + 9 + 10 = 33
  end

  it 'should return 0 when the final number is less than 3' do
    expect(sum_of_3_or_5_multiples(2)).to eq(0)
  end
end
