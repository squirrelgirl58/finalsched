json.extract! student, :id, :f_name, :l_name, :grad_yr, :netid, :password, :created_at, :updated_at
json.url student_url(student, format: :json)