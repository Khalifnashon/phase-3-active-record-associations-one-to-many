ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'

# Working with associations

# Using the belongs_to association
# Get a review instance
# review = Review.first
# call the #game instance method to return a Game instance
# review.game
# => #<Game:0x00007f9de1710be8 id: 1, title: "Metroid Prime",...>

# Using the has_many :reviews macro in our Game class generates an instance method,
# #reviews that we can use to access the data about reviews from the game:

# Get a game instance
# game = Game.first
# call the #reviews instance method to return a list of Review instances
# game.reviews
# => [#<Review:0x00007f9ddcb09100 id: 1, score: 6, ...>, #<Review:0x00007f9ddcb08f98 id: 2,

# Create a review
# review = Review.create(score: 8, comment: "wow, what a game")
# Create a game associated with the review
# review.create_game(title: "My favorite game")
# Save the association
# review.save
