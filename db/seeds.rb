
if Rails.env.development? && !AdminUser.exists?(email: 'admin@example.com')
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

# Seed Work Types
WorkType.find_or_create_by name: 'Tam Zamanlı'
WorkType.find_or_create_by name: 'Yarı Zamanlı'
WorkType.find_or_create_by name: 'Staj'