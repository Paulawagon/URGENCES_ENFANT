# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.new(email: "paula@test.fr", password: "123456", address: "Marseille")
u1.save!

my_disease = Disease.new(
	          name: "paula@test.fr",
              symptoms: "123456",
              behavior: "Marseille",
              when_consult: "dqdsfq",
              need_know: "qsdfa",
              prevention: "dfqdfq")
my_disease.user = u1
my_disease.save!