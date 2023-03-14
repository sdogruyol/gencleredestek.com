
if Rails.env.development? && !AdminUser.exists?(email: 'admin@example.com')
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

# Seed Work Types
WorkType.find_or_create_by name: 'Tam Zamanlı'
WorkType.find_or_create_by name: 'Yarı Zamanlı'
WorkType.find_or_create_by name: 'Staj'

# Seed Work Positions
WorkPosition.find_or_create_by name: 'Backend'
WorkPosition.find_or_create_by name: 'Frontend'
WorkPosition.find_or_create_by name: 'Design'
WorkPosition.find_or_create_by name: 'Product'

# Seed Locations
Location.find_or_create_by id: 1, name: "Adana", display_order: 5
Location.find_or_create_by id: 2, name: "Adıyaman", display_order: 6
Location.find_or_create_by id: 3, name: "Afyonkarahisar", display_order: 7
Location.find_or_create_by id: 4, name: "Ağrı", display_order: 8
Location.find_or_create_by id: 5, name: "Amasya", display_order: 9
Location.find_or_create_by id: 6, name: "Ankara", display_order: 3
Location.find_or_create_by id: 7, name: "Antalya", display_order: 10
Location.find_or_create_by id: 8, name: "Artvin", display_order: 11
Location.find_or_create_by id: 9, name: "Aydın", display_order: 12
Location.find_or_create_by id: 10, name: "Balıkesir", display_order: 13
Location.find_or_create_by id: 11, name: "Bilecik", display_order: 14
Location.find_or_create_by id: 12, name: "Bingöl", display_order: 15
Location.find_or_create_by id: 13, name: "Bitlis", display_order: 16
Location.find_or_create_by id: 14, name: "Bolu", display_order: 17
Location.find_or_create_by id: 15, name: "Burdur", display_order: 18
Location.find_or_create_by id: 16, name: "Bursa", display_order: 19
Location.find_or_create_by id: 17, name: "Çanakkale", display_order: 20
Location.find_or_create_by id: 18, name: "Çankırı", display_order: 21
Location.find_or_create_by id: 19, name: "Çorum", display_order: 22
Location.find_or_create_by id: 20, name: "Denizli", display_order: 23
Location.find_or_create_by id: 21, name: "Diyarbakır", display_order: 24
Location.find_or_create_by id: 22, name: "Edirne", display_order: 25
Location.find_or_create_by id: 23, name: "Elazığ", display_order: 26
Location.find_or_create_by id: 24, name: "Erzincan", display_order: 27
Location.find_or_create_by id: 25, name: "Erzurum", display_order: 28
Location.find_or_create_by id: 26, name: "Eskişehir", display_order: 29
Location.find_or_create_by id: 27, name: "Gaziantep", display_order: 30
Location.find_or_create_by id: 28, name: "Giresun", display_order: 31
Location.find_or_create_by id: 29, name: "Gümüşhane", display_order: 32
Location.find_or_create_by id: 30, name: "Hakkari", display_order: 33
Location.find_or_create_by id: 31, name: "Hatay", display_order: 34
Location.find_or_create_by id: 32, name: "Isparta", display_order: 35
Location.find_or_create_by id: 33, name: "Mersin", display_order: 36
Location.find_or_create_by id: 34, name: "İstanbul", display_order: 2
Location.find_or_create_by id: 35, name: "İzmir", display_order: 4
Location.find_or_create_by id: 36, name: "Kars", display_order: 37
Location.find_or_create_by id: 37, name: "Kastamonu", display_order: 38
Location.find_or_create_by id: 38, name: "Kayseri", display_order: 39
Location.find_or_create_by id: 39, name: "Kırklareli", display_order: 40
Location.find_or_create_by id: 40, name: "Kırşehir", display_order: 41
Location.find_or_create_by id: 41, name: "Kocaeli", display_order: 42
Location.find_or_create_by id: 42, name: "Konya", display_order: 43
Location.find_or_create_by id: 43, name: "Kütahya", display_order: 44
Location.find_or_create_by id: 44, name: "Malatya", display_order: 45
Location.find_or_create_by id: 45, name: "Manisa", display_order: 46
Location.find_or_create_by id: 46, name: "Kahramanmaraş", display_order: 47
Location.find_or_create_by id: 47, name: "Mardin", display_order: 48
Location.find_or_create_by id: 48, name: "Muğla", display_order: 49
Location.find_or_create_by id: 49, name: "Muş", display_order: 50
Location.find_or_create_by id: 50, name: "Nevşehir", display_order: 51
Location.find_or_create_by id: 51, name: "Niğde", display_order: 52
Location.find_or_create_by id: 52, name: "Ordu", display_order: 53
Location.find_or_create_by id: 53, name: "Rize", display_order: 54
Location.find_or_create_by id: 54, name: "Sakarya", display_order: 55
Location.find_or_create_by id: 55, name: "Samsun", display_order: 56
Location.find_or_create_by id: 56, name: "Siirt", display_order: 57
Location.find_or_create_by id: 57, name: "Sinop", display_order: 58
Location.find_or_create_by id: 58, name: "Sivas", display_order: 59
Location.find_or_create_by id: 59, name: "Tekirdağ", display_order: 60
Location.find_or_create_by id: 60, name: "Tokat", display_order: 61
Location.find_or_create_by id: 61, name: "Trabzon", display_order: 62
Location.find_or_create_by id: 62, name: "Tunceli", display_order: 63
Location.find_or_create_by id: 63, name: "Şanlıurfa", display_order: 64
Location.find_or_create_by id: 64, name: "Uşak", display_order: 65
Location.find_or_create_by id: 65, name: "Van", display_order: 66
Location.find_or_create_by id: 66, name: "Yozgat", display_order: 67
Location.find_or_create_by id: 67, name: "Zonguldak", display_order: 68
Location.find_or_create_by id: 68, name: "Aksaray", display_order: 69
Location.find_or_create_by id: 69, name: "Bayburt", display_order: 70
Location.find_or_create_by id: 70, name: "Karaman", display_order: 71
Location.find_or_create_by id: 71, name: "Kırıkkale", display_order: 72
Location.find_or_create_by id: 72, name: "Batman", display_order: 73
Location.find_or_create_by id: 73, name: "Şırnak", display_order: 74
Location.find_or_create_by id: 74, name: "Bartın", display_order: 75
Location.find_or_create_by id: 75, name: "Ardahan", display_order: 76
Location.find_or_create_by id: 76, name: "Iğdır", display_order: 77
Location.find_or_create_by id: 77, name: "Yalova", display_order: 78
Location.find_or_create_by id: 78, name: "Karabük", display_order: 79
Location.find_or_create_by id: 79, name: "Kilis", display_order: 80
Location.find_or_create_by id: 80, name: "Osmaniye", display_order: 81
Location.find_or_create_by id: 81, name: "Düzce", display_order: 82
Location.find_or_create_by id: 82, name: 'Remote', display_order: 1

def create_company(location_id, work_type_id)
  location = Location.find location_id
  work_type = WorkType.find work_type_id
  company_name = Faker::Company.name
  perks = Faker::Company.catch_phrase
  website = Faker::Internet.domain_name(subdomain: true, domain: "example")
  contact_email = Faker::Internet.safe_email

  company = Company.create name: company_name, perks: perks
  company.contact_email = contact_email
  company.website = website
  company.locations << location
  company.work_types << work_type
  company.save
end

if Rails.env.development? && Company.count == 0
  # Create 50 random companies with random locations
  30.times do
    location_id = rand 1..82
    work_type_id = rand 1..3

    create_company location_id, work_type_id
  end

  # Create 10 Remote companies
  5.times do
    location_id = 82
    work_type_id = rand 1..3

    create_company location_id, work_type_id
  end
end
