class Poi < ActiveRecord::Base

  def distance(a,b)
    Math.sqrt((a[0]-b[0])**2+(a[1]-b[1])**2)
  end
end
