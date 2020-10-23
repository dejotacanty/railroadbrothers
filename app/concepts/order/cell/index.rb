module Order::Cell
  class Index < Trailblazer::Cell
    
    property :customer_id

    def orders
      Order.all
    end
  end
end