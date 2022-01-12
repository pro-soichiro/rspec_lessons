require "calc"

RSpec.describe Calc do
  # subject を使う
  subject(:calc) { Calc.new }
  it "addというメソッドがあるか" do
    expect(calc).to respond_to(:add)
  end
  it "2+3は5になる" do
    expect(calc.add(2, 3)).to eq(5)
  end
  it "3+3は5にならない" do
    expect(calc.add(3, 3)).not_to eq(5)
  end
  it "3+12は10以上である" do
    expect(calc.add(3, 12)).to be > 10
  end
  it "出力される数字はINT型である" do
    expect(calc.add(3, 12)).to be_kind_of(Integer)
  end
end