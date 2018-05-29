require("minitest/autorun")
require_relative("../d2hw_river.rb")
require_relative("../d2hw_fish.rb")

class RiverTest < MiniTest::Test
  @fish1 = Fish.new("Elizabeth")
  @fish2 = Fish.new("Albert")
  @fish3 = Fish.new("Charles")
  @river1 = River.new("Water of Leith", [])
  @river2 = River.new("Clyde", [@fish1, @fish2])
  @river3 = River.new("Seine", [])
  @river4 = River.new("Rhine", [])
end
