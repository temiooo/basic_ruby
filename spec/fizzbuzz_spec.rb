require "./fizzbuzz"

describe "Fizzbuzz" do
  it "throws an error if no parameter is specified" do
    expect(fizzbuzz).to eq("Error: No parameter specified")
  end

  it "throws an error if parameter is not a number" do
    expect(fizzbuzz("middle")).to eq("Error: Parameter is not a number")
  end

  it "returns Fizz for multiples of 3" do
    expect(fizzbuzz(3)).to eq("Fizz")
    expect(fizzbuzz(36)).to eq("FIzz")
  end

  it "returns Buzz for multiples of 5" do
    expect(fizzbuzz(5)).to eq("Buzz")
    expect(fizzbuzz(100)).to eq("Buzz")
  end

  it "returns FizzBuzz for multiples of 3 and 5" do
    expect(fizzbuzz(30)).to eq("Fizzbuzz")
    expect(fizzbuzz(75)).to eq("Fizzbuzz")
  end

  it "returns the input if input is not a multiple of 3, 5 or both" do
    expect(fizzbuzz(1)).to eq(1)
    expect(fizzbuzz(42)).to eq(42)
  end
end