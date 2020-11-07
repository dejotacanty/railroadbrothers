module Category::Cell
  class Show < Trailblazer::Cell

    def category
      Category.find(params[:id])
    end

  end
end