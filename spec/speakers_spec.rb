require 'spec_helper'
require 'conf/speakers'

describe RubyConfUA::Speakers do
  before :each do
    @speakers = RubyConfUA::Speakers
  end

  it "should have at least 12 speakers" do
    @speakers.count.should eq(12)
  end

  it "should have awesome speakers" do
    @speakers.awesomeness.should > 9000
  end
end