json.extract! series, :id, :name, :description, :picture, :rating, :created_at, :updated_at
json.url series_url(series, format: :json)
