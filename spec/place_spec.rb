require 'spec_helper'
require 'conf/place'

describe RubyConfUA::Place do
  before :each do
    @place = RubyConfUA::Place
  end

  it "should have a city" do
    @place.city.should_not be_nil
  end

  it "should have hall name" do
    @place.hall.should_not be_nil
  end

  it "should have an address" do
    @place.address.should_not be_nil
  end

  it "should have at least 200 seats" do
    @place.seats.should > 200
  end

  it "should have a place for coffee brakes" do
    @place.place_for_coffee_brakes.should be_true
  end
end