require('rspec')
require('number_to_words')
require('pry')

describe('#number_to_words') do

  it("changes 1 to 'one'") do
    expect(number_to_words(1)).to(eq("one"))
  end

  it("changes 15 to 'fifteen'") do
    expect(number_to_words(15)).to(eq("fifteen"))
  end

  it("changes 37 to 'thirty seven'") do
    expect(number_to_words(37)).to(eq("thirty seven"))
  end

  it("changes 89 to 'eighty nine'") do
    expect(number_to_words(89)).to(eq("eighty nine"))
  end

  it("changes 211 to 'two hundred eleven'") do
    expect(number_to_words(211)).to(eq("two hundred eleven"))
  end

  it("changes 999 to 'nine hundred ninety nine'") do
    expect(number_to_words(999)).to(eq("nine hundred ninety nine"))
  end

  it("changes 1119 to 'one thousand one hundred nineteen'") do
    expect(number_to_words(1119)).to(eq("one thousand one hundred nineteen"))
  end
  it("changes 12792 to 'twelve thousand seven hundred ninety two'") do
    expect(number_to_words(12792)).to(eq("twelve thousand seven hundred ninety two"))
  end

  it("changes 65432 to 'sixty five thousand four hundred thirty two'") do
    expect(number_to_words(65432)).to(eq("sixty five thousand four hundred thirty two"))
  end
end