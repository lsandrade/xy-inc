class Poi < ActiveRecord::Base

  validates :name, presence: true
  validates :x, presence: true
  validates :y, presence: true


  def distance(a,b)
    Math.sqrt((a[0]-b[0])**2+(a[1]-b[1])**2)
  end

  def proximity(point)
    locales = []
    pois = Poi.all

    for poi in pois do
      if (distance([point[0],point[1]],[poi.x,poi.y]) <= point[2])
        locales.append(poi.name)
      end
    end
    return locales
  end
end
