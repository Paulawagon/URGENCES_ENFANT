# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Analyse.destroy_all
Child.destroy_all
User.destroy_all
Disease.destroy_all

u1 = User.new(first_name: "Paula", last_name: "Pisa", email: "paula@test.fr", password: "123456")
u1.save!

e1 = Child.new(first_name: "Lola", birth_date: "2019, 11, 10", weight: 500, cardiac: false, respiratory: false, prematurity: false)
e1.user = u1
e1.save!

a1 = Analyse.new(symptoms: ["toux"])
a1.child = e1
a1.save!

d1 = Disease.new(name: "Fièvre", symptoms: ["fièvre"], behavior: " Doliprane", when_consult: "Après 48h de fièvre", need_know: "peut pas etre blank", prevention: "peut pas etre blank")
d1.save!
