class ErrorsController < ApplicationController
  def not_found
  	render_cell cell: Error::Cell::NotFound
  end
end