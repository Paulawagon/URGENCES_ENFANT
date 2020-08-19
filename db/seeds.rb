# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Analysis.destroy_all
Child.destroy_all
User.destroy_all
Disease.destroy_all

u1 = User.new(first_name: "Paula", last_name: "Pisa", email: "paula@test.fr", password: "123456")
u1.save!

e1 = Child.new(first_name: "Lola", birth_date: Date.new(2019, 11, 10), weight: 500, cardiac: false, respiratory: false, prematurity: false)
e1.user = u1
e1.save!

a1 = Analysis.new(symptoms: ["toux"])
a1.child = e1
a1.save!

d1 = Disease.new(name: "Fièvre", symptoms: ["fièvre"], behavior: " Doliprane", when_consult: "Après 48h de fièvre", need_know: "peut pas etre blank", prevention: "peut pas etre blank")
d1.save!

d2 = Disease.new(name: "Toux", symptoms: ["toux"], behavior: " Les médicaments contre la toux ne sont pas conseillés", when_consult: "Si la fièvre ne baisse pas", need_know: "Si un des signes d'aggravation apparaît", prevention: "Se laver les mains avant et après tout soin prodigué")
d2.save!

d3 = Disease.new(name: "Rhume", symptoms: ["rhume"], behavior: " Nettoyage méticuleux et régulier", when_consult: "Détérioration de la respiration (plus de 40 respirations par minutes)", need_know: "Fractionner les repas ", prevention: "Laver les mains des ainés au retour à la maison - Ne pas laisser les mouchoirs souillés - ....")
d3.save!

d4 = Disease.new(name: "Diarrhées", symptoms: ["diarrhées"], behavior: " Solution de réhydratation orale (SRO)", when_consult: "S il a du sang dans les selles...", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: "Généralement viral")
d4.save!

d5 = Disease.new(name: "Vomissements", symptoms: ["vomissement"], behavior: " Solution de réhydratation orale (SRO)", when_consult: "Perte de poids importante", need_know: "La SRO est disponible en pharmacie sans ordonnance.", prevention: "Généralement viral")
d5.save!

d6 = Disease.new(name: "Douleurs abdominales", symptoms: ["douleurs_abdo"], behavior: " Doliprane", when_consult: "Perte de poids importante", need_know: "Surveiller la température(appendicite)", prevention: "peut pas etre blank")
d6.save!

d7 = Disease.new(name: "Brulures", symptoms: ["brulures"], behavior: " Refroidissement 10 min sous l'eau froide", when_consult: "Plaie dont la taille est supérieure à 10 cm", need_know: "Ne pas appliquer de dentifrice", prevention: "Afin d'éviter les brulures liées au soleil appliquer un écran total")
d7.save!
