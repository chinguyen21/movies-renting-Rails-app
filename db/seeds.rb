# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all
Receipt.destroy_all
Review.destroy_all


user1 = User.create(name: "Mason", email_address: "mount99@gmail.com", age: 21)
user2 = User.create(name: "Werner", email_address: "werner96@gmail.com", age: 24)

movie1 = Movie.create(name: "The Witcher", premiered_on: "2019-12-20", imdb: 8.2, poster: "https://collider.com/wp-content/uploads/2019/12/witcher-character-poster-geralt.jpg", link_imdb: "https://www.imdb.com/title/tt5180504", trailer: "https://www.youtube.com/embed/ndl1W4ltcmg")
movie2 = Movie.create(name: "Money Heist", premiered_on: "2017-05-02", imdb: 8.4, poster: "https://images-na.ssl-images-amazon.com/images/I/61boFr6SYZL._SL1000_.jpg", link_imdb: "https://www.imdb.com/title/tt6468322", trailer: "https://www.youtube.com/embed/ZAXA1DV4dtI")
movie3 = Movie.create(name: "The Queen's Gambit", premiered_on: "2020-10-23", imdb: 8.7, poster: "https://m.media-amazon.com/images/M/MV5BM2EwMmRhMmUtMzBmMS00ZDQ3LTg4OGEtNjlkODk3ZTMxMmJlXkEyXkFqcGdeQXVyMjM5ODk1NDU@._V1_.jpg", link_imdb: "https://www.imdb.com/title/tt10048342", trailer: "https://www.youtube.com/embed/CDrieqwSdgI")
movie4 = Movie.create(name: "Prison Break", premiered_on: "2005-08-29", imdb: 8.3, poster: "https://images-na.ssl-images-amazon.com/images/I/81i6%2BcXBr%2BL._AC_SY679_.jpg", link_imdb: "https://www.imdb.com/title/tt0455275", trailer: "https://www.youtube.com/embed/der8A7Z9u7c")
movie5 = Movie.create(name: "Breaking Bad", premiered_on: "2008-01-20", imdb: 9.5, poster: "https://i.pinimg.com/originals/ad/a0/ec/ada0ec5d2a4ec122ec6a7ce2dd95cd3c.jpg", link_imdb: "https://www.imdb.com/title/tt0903747", trailer: "https://www.youtube.com/embed/ceqOTZnhgY8")


receipt1 = Receipt.create(movie_id: movie1.id, user_id: user2.id, checkout_date: "2020-12-10", due_date: "2020-12-17")
receipt2 = Receipt.create(movie_id: movie1.id, user_id: user1.id, checkout_date: "2020-12-03", due_date: "2020-12-11")
receipt3 = Receipt.create(movie_id: movie3.id, user_id: user1.id, checkout_date: "2020-12-11", due_date: "2020-12-18")
receipt4 = Receipt.create(movie_id: movie2.id, user_id: user2.id, checkout_date: "2020-12-12", due_date: "2020-12-19")
receipt5 = Receipt.create(movie_id: movie2.id, user_id: user1.id, checkout_date: "2020-12-08", due_date: "2020-12-15")
receipt6 = Receipt.create(movie_id: movie4.id, user_id: user1.id, checkout_date: "2020-12-11", due_date: "2020-12-18")
receipt7 = Receipt.create(movie_id: movie5.id, user_id: user2.id, checkout_date: "2020-12-06", due_date: "2020-12-13")


review1 = Review.create(movie_id: movie1.id, user_id: user2.id, content: "I love it! Can't wait to see the next season", rating: 9.5)
review2 = Review.create(movie_id: movie1.id, user_id: user1.id, content: "Don't really understand at first but still curious about the end", rating: 8.2)
review3 = Review.create(movie_id: movie2.id, user_id: user2.id, content: "Fantastic!!!!!! What more can I say. The plots are gripping,the acting superb. Can't wait for series 6.", rating: 9.8)
review4 = Review.create(movie_id: movie4.id, user_id: user2.id, content: "S1 is the best season I've ever watched in my life", rating: 10.0)
review5 = Review.create(movie_id: movie5.id, user_id: user1.id, content: "Good enough", rating: 9.0)
