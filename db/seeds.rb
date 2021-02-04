# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

=begin
p doc = Doctor.create(first_name: "alain",last_name: "dupont",specialty: "géneraliste",zip_code:"7777")

p pat = Patient.create(first_name: "julie",last_name: "la_passante")

p r_v = Appointment.create( date: 2020,doctor: doc, patient: pat)
=end
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

5.times do |index|



    pat = Patient.create(first_name:Faker::Name.first_name , last_name:Faker::Name.last_name)


    doc = Doctor.create(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name)

    r_v = Appointment.create(  doctor: doc, patient: pat, date:Faker::Date.between(from: '2014-09-23', to: '2014-09-25'))

   #Citie.create

  end


  