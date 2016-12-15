json.extract! registration, :id, :course_id, :student_id, :grade, :created_at, :updated_at
json.url registration_url(registration, format: :json)
