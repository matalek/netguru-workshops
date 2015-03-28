# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'admin@example.com', firstname: 'Great', lastname: 'Admin',
             password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)

User.create(email: 'jan@kowalski.pl', firstname: 'Jan', lastname: 'Kowalski',
            password: 'tajnehaslo', password_confirmation: 'tajnehaslo')

User.create(email: 'piotrus@poczta.pl', firstname: 'Piotr', lastname: 'Bajeczny',
            password: 'ppiioottrr', password_confirmation: 'ppiioottrr')

User.create(email: 'akoza@skrzynka.waw.pl', firstname: 'Andrzej', lastname: 'Kozak',
            password: 'kozacko123', password_confirmation: 'kozacko123')

User.create(email: 'usmieszek123@abc.com', firstname: 'Anna', lastname: 'Krzywicka',
            password: 'anusia88', password_confirmation: 'anusia88')

User.create(email: 'maria@borsuki.pl', firstname: 'Mari', lastname: 'Borsuk',
            password: 'fajnehaslo', password_confirmation: 'fajnehaslo')