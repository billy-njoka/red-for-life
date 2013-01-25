namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
   admin= User.create!(first_name: "Billy",
                 last_name: "Whizz",
                 email: "whizz@ieoss.com",
                 username: "whizzy",
                 password: "whizzz",
                 password_confirmation: "whizzz")
  admin.toggle!(:admin)  
99.times do |n|
      first_name  =  Faker::Name.first_name 
      last_name  =  Faker::Name.last_name 
      username  =  "username#{n+1}" 
      email = "example#{n+1}@ieoss.com"
      password  = "password"
      User.create!(first_name: first_name,
		   last_name: last_name,
                   email: email,
                   username: username,
                   password: password,
                   password_confirmation: password)
    end
  end
end
