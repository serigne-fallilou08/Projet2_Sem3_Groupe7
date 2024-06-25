require_relative '../lib/01_day_trader'

describe 'day_trader' do
  it 'finds the best days to buy and sell' do
    prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
    expect(day_trader(prices)).to eq([1, 4])
  end

  it 'handles different price arrays' do
    prices = [10, 20, 30, 40, 50]
    expect(day_trader(prices)).to eq([0, 4])
  end

  it 'returns an empty array if no profitable days' do
    prices = [50, 40, 30, 20, 10]
    expect(day_trader(prices)).to eq([])
  end
end
