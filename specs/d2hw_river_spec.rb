require("minitest/autorun")
require_relative("../d2hw_river.rb")
require_relative("../d2hw_fish.rb")
require_relative("../d2hw_bear.rb")

class RiverTest < MiniTest::Test

  def setup
  @fish1 = Fish.new("Elizabeth")
  @fish2 = Fish.new("Albert")
  @fish3 = Fish.new("Charles")
  @river1 = River.new("Water of Leith", [])
  @river2 = River.new("Clyde", [@fish1, @fish2])
  @river3 = River.new("Seine", [])
  @river4 = River.new("Rhine", [])
  @bear1 = Bear.new("Magnus", "Koala", [])
  @bear2 = Bear.new("Dominic", "Black Bear", [])
  end

  def test_count_fish_in_river
    assert_equal(2, @river2.count_fish_in_river())
  end

end
