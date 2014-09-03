require_relative '../lib/prime_generator'

describe PrimeGenerator do

  let(:prime_generator) { PrimeGenerator.new }

  describe "PrimeGenerator.generate" do

    context "Check that primes under 100 (the default number) are generated correctly" do
      it {
        expect(prime_generator.generate).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
      }
    end

    context "Check that the first 10 primes are generated correctly" do
      it {
        expect(prime_generator.generate(30)).to eq([2,3,5,7,11,13,17,19,23,29])
      }
    end

  end
end
