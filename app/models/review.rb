class Review < ActiveRecord::Base
    # First method
    # def game
    #     # self is the review instance
    #     Game.find(self.game_id)
    # end

    # Second method
    belongs_to :game
end
