require "calc"

RSpec.describe Calc do
  # example / specify
  it {
    calc = Calc.new
    expect(calc.add(2, 3)).to eq(5)
  }
  it "draws graph" # pending
end