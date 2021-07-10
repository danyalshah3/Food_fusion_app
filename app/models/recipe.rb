class Recipe < ApplicationRecord
    validates :name, :description, :ingredients, :minutes, presence: true
    validates :minutes, numericality: { greatern_than: 0, less_than_equal_to: 200 }
    validates :description, length: { minimum: 5 }

    validate :no_biryani

    private

    def no_biryani
        if self.name.include?("biryani")
            self.errors.add(:name, "is not available")
        end
    end
end
