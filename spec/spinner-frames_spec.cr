require "./spec_helper"

describe SpinnerFrames do
  it "defaults" do
    s = SpinnerFrames.new
    s.next.should eq "-"
    s.next.should eq "\\"
    s.next.should eq "|"
    s.next.should eq "/"
  end

  it "works with a plain string" do
    s = SpinnerFrames.new("abc")
    s.next.should eq "a"
    s.next.should eq "b"
    s.next.should eq "c"
    s.next.should eq "a"
  end

  it "works with an array of strings" do
    s = SpinnerFrames.new(["[-]", "[\\]", "[|]", "[/]"])
    s.next.should eq "[-]"
    s.next.should eq "[\\]"
    s.next.should eq "[|]"
    s.next.should eq "[/]"
  end
end
