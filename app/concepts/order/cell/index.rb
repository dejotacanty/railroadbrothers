module Order::Cell
  class Index < Trailblazer::Cell

    def orders
      Order.all
    end
  end
end