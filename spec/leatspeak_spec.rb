
require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it("will change 'e' to '3'") do
    expect("sentence".leetspeak).to(eq("s3nt3nc3"))
  end
  it("will change 'o' to '0'") do
    expect("bro".leetspeak).to(eq("br0"))
  end
  it("will change 'I' to '1'") do
    expect("Initial".leetspeak).to(eq("1nitial"))
  end
  it("will change 's' to 'z' except if it's the first letter of the word") do
    expect("saps".leetspeak).to(eq("sapz"))
  end
end
