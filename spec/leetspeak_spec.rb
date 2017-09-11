
require('rspec')
require('pry')
require('leetspeak')

# describe(String) do

  describe('#leetspeak') do
    it("will change 'e' to '3'") do
      expect(Leetspeak.new("sentence").leetspeaker).to(eq("s3nt3nc3"))
    end
    it("will change 'o' to '0'") do
      expect(Leetspeak.new("bro").leetspeaker).to(eq("br0"))
    end
    it("will change 'I' to '1'") do
      expect(Leetspeak.new("Initial").leetspeaker).to(eq("1nitial"))
    end
    it("will change 's' to 'z' except if it's the first letter of the word") do
      expect(Leetspeak.new("saps").leetspeaker).to(eq("sapz"))
    end
  # end
end
