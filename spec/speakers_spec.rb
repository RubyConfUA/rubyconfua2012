require 'spec_helper'
require 'conf/speakers'

describe RubyConfUA::Speakers do
  before :each do
    @speakers = RubyConfUA::Speakers
  end

  it { @speakers.count.should be_within(10).of(20) }

  xit "should have awesome speakers" do
    @speakers.awesomeness.should > 9000
  end
end
