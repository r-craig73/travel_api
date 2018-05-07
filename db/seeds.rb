class Seed

  def self.begin
    seed = Seed.new
    seed.generate_locations
  end

  def generate_locations
    10.times do |i|
      country =
      location = Location.create!(
        country: Faker::Address.country,
        city: Faker::Address.city
      )
      puts "Location #{i}: Country is #{location.country} and city is '#{location.city}'."
    end
  end

end

Seed.begin
