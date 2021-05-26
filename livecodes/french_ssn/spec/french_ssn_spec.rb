require_relative '../french_ssn'

describe '#french_ssn_info' do
  it 'should return "The number is invalid" if given an empty string' do
    actual = french_ssn_info('')
    expected = "The number is invalid"
    expect(actual).to eq(expected) # actual == expected
  end

  it 'should return the correct info if given "1 84 12 76 451 089 46"' do
    actual = french_ssn_info("1 84 12 76 451 089 46")
    expected = "a man, born in December, 1984 in Seine-Maritime."
    expect(actual).to eq(expected) # actual == expected
  end

  it 'should return "The number is invalid" if given "3 84 12 76 451 089 46"' do
    actual = french_ssn_info("3 84 12 76 451 089 46")
    expected = "The number is invalid"
    expect(actual).to eq(expected) # actual == expected
  end

  it 'should return "The number is invalid" if given "1 84 12 76 451 089 86"' do
    actual = french_ssn_info("1 84 12 76 451 089 86")
    expected = "The number is invalid"
    expect(actual).to eq(expected) # actual == expected
  end
end