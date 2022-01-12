require "calc"

RSpec.describe Calc do

  it {
    logger = double('logger')
    expect(logger).to receive(:log)
    calc = Calc.new(logger)
    expect(calc.add(5,2)).to eq(7)
  }

end