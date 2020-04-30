require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

35.times do
  city = City.create!(
    city_name: Faker::Address.city
  )
  dog = Dog.create!(
    name: Faker::Name.first_name,
    city: City.all.sample
  )
  dogsitter = Dogsitter.create!(
    name: Faker::Name.first_name,
    city: City.all.sample
  )
  stroll = Stroll.create!(
    dog: Dog.all.sample,
    dogsitter: Dogsitter.all.sample
  )
end