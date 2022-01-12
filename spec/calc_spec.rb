require "calc"

RSpec.describe Calc do

  it {
    user = double('user')
    allow(user).to receive(:name).and_return('mamiya')
    calc = Calc.new
    expect(calc.add(5,2,user.name)).to eq('7 by mamiya')
  }

end