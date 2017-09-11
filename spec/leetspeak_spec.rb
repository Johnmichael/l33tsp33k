
require('rspec')
require('pry')
require('leetspeak')

# describe(String) do

  describe('#leetspeak') do
    it("will change 'e' to '3'") do
      expect(String.new("sentence").leetspeak).to(eq("s3nt3nc3"))
    end
    it("will change 'o' to '0'") do
      expect(String.new("bro").leetspeak).to(eq("br0"))
    end
    it("will change 'I' to '1'") do
      expect(String.new("Initial").leetspeak).to(eq("1nitial"))
    end
    it("will change 's' to 'z' except if it's the first letter of the word") do
      expect(String.new("saps").leetspeak).to(eq("sapz"))
    end
  # end
end
