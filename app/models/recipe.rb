class Recipe < ApplicationRecord
    validates :name, :description, :ingredients, :minutes, presence: true
    validates :minutes, numericality: { greatern_than: 0, less_than_equal_to: 200 }
    validates :description, length: { minimum: 5 }
    has_many :reviews
    has_many :users, through: :reviews
    validate :no_biryani
    scope :search, -> (name){ where("name LIKE ?", "%#{name}%")}
    scope :alphabetical, -> {order(:name)}
    scope :by_number_of_reviews, -> {
    left_joins(:reviews)
    .select("recipes.*, count(reviews.id) AS reviews_count")
    .group("recipes.id")
    .order("reviews_count DESC")
   }
     scope :average_review, -> {
    left_joins(:reviews)
    .select("recipes.*, avg(reviews.rating) AS average_review")
    .group("recipes.id")
    .order("average_review DESC")
   }

   def self.select_sort(sort)
    case sort
    when "alphabetical"
      alphabetical
    when "number_reviews"
      by_number_of_reviews
    when "average_review"
      average_review
    else
      all
    end
  end


    def average_review
        reviews.average(:rating).to_i
    end
   

    private

    def no_biryani
        if self.name.include?("biryani")
            self.errors.add(:name, "BIRYANI is not available")
        end
    end

    


end
