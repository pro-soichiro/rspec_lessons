require "calc"

RSpec.describe Calc do
  subject(:calc) { Calc.new }

  let!(:tax) {
    calc.tax = 0.05
  }

  it { expect(tax).to eq(0.05) }
  it { expect(calc.price(100)).to eq(105) }
end