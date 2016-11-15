require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('returns scrabble score for a letter') do
    expect("a".scrabble()).to(eq(1))
  end
  it('returns scrabble score for letters with different values') do
    expect("b".scrabble()).to(eq(3))
  end
  it('returns word value') do
    expect("scrabble".scrabble()).to(eq(14))
  end
end
