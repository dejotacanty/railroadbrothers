module Category::Cell
  class Index < Trailblazer::Cell

    property :name

    def categories
      Category.all
    end
  end
end