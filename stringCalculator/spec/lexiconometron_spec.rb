require_relative "../lexiconometron.rb"

require "spec_helper"

describe Lexiconomitron do 
  describe "#eat_t" do
    before :each do
      @lexi = Lexiconomitron.new
    end
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end

    it "it reverses the letters within the words" do
      expect(@lexi.shazzam(["abc", "def"])).to match_array(["cba", "fed"])
    end

    it "it returns only the first and last words" do
      expect(@lexi.shazzam(["aaa", "bbb", "ccc"])).to match_array(["aaa", "ccc"])
    end

    it "it 'eats' the Ts" do
      expect(@lexi.shazzam(["aaTa", "bbb", "cctc"])).to match_array(["aaa", "ccc"])
    end  

    it "it takes the ones with size of three or less" do
      expect(@lexi.oompa_loompa(  ["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end

    it "it takes the ones with size of three or less and eats Ts" do
      expect(@lexi.oompa_loompa(["To", "Traverse", "the", "universe"])).to eq(["o","he"])
    end

  end
end