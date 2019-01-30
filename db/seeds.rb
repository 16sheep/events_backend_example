# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "marju@marju.com", password:"hello")
User.create(email: "lucy@marju.com", password:"bye")
User.create(email: "gabriel@marju.com", password:"goodevening")

Event.create(title: "Coding Event", user_id: 1, datetime: Time.now, latitude:"51.908", longitude:"11.3456", capacity: 5, icon:"greaticon")
Event.create(title: "Football Event", user_id: 3, datetime: Time.now, latitude:"52.908", longitude:"12.3456", capacity: 8, icon:"greaticon2")

UserEvent.create(user_id: 1, event_id: 1)
UserEvent.create(user_id: 2, event_id: 1)
UserEvent.create(user_id: 3, event_id: 1)

UserEvent.create(user_id: 1, event_id: 2)
UserEvent.create(user_id: 2, event_id: 2)
UserEvent.create(user_id: 3, event_id: 2)
