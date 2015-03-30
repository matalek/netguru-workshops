# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Admin

admin = User.create!(email: 'admin@example.com', firstname: 'Great', lastname: 'Admin',
             password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)

#Users

john = User.create!(email: 'john@cox.pl', firstname: 'John', lastname: 'Cox',
            password: 'passpass', password_confirmation: 'passpass')

peter = User.create!(email: 'peter@peter.com', firstname: 'Peter', lastname: 'Night',
            password: 'ppeetteerr', password_confirmation: 'ppeetteerr')

andrew = User.create!(email: 'andrewc@mail.com', firstname: 'Andrew', lastname: 'Collin',
            password: 'collandr', password_confirmation: 'collandr')

ann = User.create!(email: 'smiley123@great.com', firstname: 'Ann', lastname: 'Smith',
            password: 'ann88ann', password_confirmation: 'ann88ann')

mary = User.create!(email: 'mary@flamens.pl', firstname: 'Mary', lastname: 'Flamen',
            password: 'collpass', password_confirmation: 'collpass')

#Categories, products, reviews
# Descriptions from imdb.com

movies = Category.create!(name: 'Movies')

interstellar = Product.create!(title: 'Interstellar',
               description: "A team of explorers travel through a wormhole in an attempt to ensure humanity's survival.",
               price: 20, category: movies, user: admin)

Review.create(content: 'Great movie!', rating: 5, product: interstellar, user: john)
Review.create(content: 'Good movie, but the plot is a little unbelieveable...', rating: 4, product: interstellar, user: andrew)
Review.create(content: 'Absolutely hated, much overrated, boring and tedious!', rating: 1, product: interstellar, user: peter)


inception = Product.create!(title: 'Inception',
               description: "A thief who steals corporate secrets through use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.",
               price: 10, category: movies, user: admin)

Review.create(content: 'Best. Movie. Ever.', rating: 5, product: inception, user: ann)
Review.create(content: 'Pretty interesting, but a little bit too long.', rating: 4, product: inception, user: john)
Review.create(content: 'What can I say: awesome!', rating: 5, product: inception, user: andrew)

gone_girl = Product.create(title: 'Gone girl',
               description: "With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.",
               price: 15, category: movies, user: admin)

Review.create(content: 'Too complex plot, not believable acting.', rating: 2, product: gone_girl, user: mary)

Category.create(name: 'Books')