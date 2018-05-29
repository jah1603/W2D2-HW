require("minitest/autorun")
require_relative("../d2hw_bear.rb")
require_relative("../d2hw_river.rb")
require_relative("../d2hw_fish.rb")

class BearTest < MiniTest::Test

  def setup
  @bear1 = Bear.new("Magnus", "Koala", [])
  @bear2 = Bear.new("Dominic", "Black Bear", [])
  @fish1 = Fish.new("Elizabeth")
  @fish2 = Fish.new("Albert")
  @fish3 = Fish.new("Charles")
  @river1 = River.new("Water of Leith", [@fish1, @fish2])
  @river2 = River.new("Clyde", [])
  @river3 = River.new("Seine", [])
  @river4 = River.new("Rhine", [])
  end

  def test_roar_method
    assert_equal("Grrrrr...", @bear1.roar_method())
  end

  def test_count_fish_in_stomach
    assert_equal(0, @bear1.count_fish_in_stomach())
  end

  def test_fish_taken__added_to_stomach
      @bear1.fish_taken(@river1)
      assert_equal(1, @bear1.count_fish_in_stomach())
  end

end
