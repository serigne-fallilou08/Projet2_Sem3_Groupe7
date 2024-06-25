require_relative '../lib/02_caesar_cipher'

describe 'caesar_cipher' do
  it 'shifts letters correctly' do
    expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
  end

  it 'handles uppercase and lowercase letters' do
    expect(caesar_cipher('Hello World', 3)).to eq('Khoor Zruog')
  end

  it 'does not shift non-letter characters' do
    expect(caesar_cipher('123!@#', 7)).to eq('123!@#')
  end
end
