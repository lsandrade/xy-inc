require 'test_helper'

class PoiTest < ActiveSupport::TestCase
   test "distance" do
     p = Poi.new
     distance = p.distance([4,5],[1,1])
     assert_equal(5,distance)
   end

   test "proximity" do
     point = [20,10,10]
     poi = Poi.new
     pois = poi.proximity(point)
     expected = ["Lanchonete", "Joalheria", "Pub", "Supermercado"]
     assert_equal(expected,pois)
   end
end
