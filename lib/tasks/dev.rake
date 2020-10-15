namespace :dev do
  desc "Set up the development environment"
  task setup: :environment do
    p "registration"
    100.times do |i|
      Vehicle.create!(
        brand: Faker::Vehicle.manufacture,
        vehicle: Faker::Vehicle.model,
        color: Faker::Vehicle.color,
        year: Faker::Vehicle.year,
        description: Faker::Vehicle.car_options,
        sold: Faker::Boolean.boolean
      )
  end
  p "Successfull"
end

end
