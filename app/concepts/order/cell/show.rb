module Order::Cell
  class Show < Trailblazer::Cell

    def order
      Order.find(params[:id])
    end
  end
end