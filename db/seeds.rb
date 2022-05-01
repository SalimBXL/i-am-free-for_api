# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# ACTIVITIES
sport = Activity.create(name: "Sport")
cinema = Activity.create(name: "Cinema")
drink = Activity.create(name: "Drink")
after_work = Activity.create(name: "After Work")
restaurant = Activity.create(name: "Restaurant")
adult = Activity.create(name: "18+")

# USERS
myself = User.create(username: "MySelf")
a_friend = User.create(username: "A Friend")

# USER-ACTIVITIES LINKS
UserActivity.create(user: myself, activity: sport)
UserActivity.create(user: myself, activity: cinema)
UserActivity.create(user: myself, activity: drink)
UserActivity.create(user: myself, activity: after_work)
UserActivity.create(user: myself, activity: restaurant)
UserActivity.create(user: myself, activity: adult)

UserActivity.create(user: a_friend, activity: sport)
UserActivity.create(user: a_friend, activity: cinema)
UserActivity.create(user: a_friend, activity: drink)
