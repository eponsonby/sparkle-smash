# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Unicorn.create(
    {image: "styles/huggy-corn.png"}
)

Unicorn.create(
    {image: "styles/oops-unicorn.png"}
)

Unicorn.create(
    {image: "styles/sitting-corn.png"}
)

Unicorn.create(
    {image: "styles/sleepy-corn.png"}
)

Unicorn.create(
    {image: "styles/smelly-corn.png"}
)

Unicorn.create(
    {image: "styles/wee-corn.png"}
)

User.create(name: "Erin")
Game.create(user_id: 1, score: 100)