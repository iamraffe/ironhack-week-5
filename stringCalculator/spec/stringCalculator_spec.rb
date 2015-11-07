require_relative "../string_calculator.rb"
require "spec_helper"

describe "StringCalculator" do 
  let(:calculator) {StringCalculator.new}
  it "returns 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end	

  it "returns 3 just that number" do
  	expect(calculator.add("3")).to eq(3)
  end

	it "returns 5 for sum 3 and 2" do
		expect(calculator.add("3;2")).to eq(5)
  end

  it "returns 18 for 3,7,1,5 and 2" do
  	expect(calculator.add("3,7,1,5, 2")).to eq(18)
  end  
end
