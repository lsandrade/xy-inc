require 'test_helper'

class PoiTest < ActiveSupport::TestCase
   test "the truth" do
     p = Poi.new
     distance = p.distance([4,5],[1,1])
     assert_equal(5,distance)
     #puts distance
   end
end
