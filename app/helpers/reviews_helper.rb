module ReviewsHelper


    def thumbs(int)
        int > 0 ? "👍" * int : "No reviews yet!"
    end

end
