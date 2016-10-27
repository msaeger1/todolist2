json.array!(@genders) do |gender|
  json.extract! gender, :id, :birth_year, :first_name, :last_name, :user
  json.url gender_url(gender, format: :json)
end
