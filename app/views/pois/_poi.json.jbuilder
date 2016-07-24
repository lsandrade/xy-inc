json.extract! poi, :id, :name, :x, :y, :created_at, :updated_at
json.url poi_url(poi, format: :json)