json.extract! professor, :id, :f_name, :l_name, :dept, :created_at, :updated_at
json.url professor_url(professor, format: :json)