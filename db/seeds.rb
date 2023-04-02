# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create some sample admins
 Admin.create(adminname: "admin1", email: "admin1@gmail.com", password: "admin12")
 Admin.create(adminname: "admin2", email: "admin2@gmail.com", password: "admin123")

# Create some sample gyms
gyms = [
  { image: "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg?auto=compress&cs=tinysrgb&w=1600", name: "Gym 1", location: "123 Main St", operating_hours: "9am-5pm", price: 50, admin_id: 1 },
  { image: "https://images.pexels.com/photos/4720796/pexels-photo-4720796.jpeg?auto=compress&cs=tinysrgb&w=1600", name: "Gym 2", location: "456 Elm St", operating_hours: "10am-6pm", price: 60, admin_id: 2 },
  { image: "https://img.freepik.com/free-photo/muscular-man-doing-push-ups-one-hand_7502-4775.jpg?w=1380&t=st=1679996678~exp=1679997278~hmac=d54d532b777dd394d05c4b0c1cded4f70f8da2a0fe7c99045c3f0055747ec47f", name: "Gym 3", location: "789 Oak St", operating_hours: "11am-7pm", price: 70, admin_id: 1 },
]

# Save each gym to the database
gyms.each do |gym_params|
  Gym.create!(gym_params)
end

puts "Seed data for gyms created successfully"





