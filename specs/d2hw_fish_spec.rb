require("minitest/autorun")
require_relative("../d2hw_fish.rb")

class FishTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Elizabeth")
    @fish2 = Fish.new("Albert")
    @fish3 = Fish.new("Charles")

  end
