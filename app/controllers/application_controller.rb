

class ApplicationController < ActionController::Base


  def tyrant
    Tyrant::Session.new(request.env['warden'])
  end
  helper_method :tyrant

	def render_cell(cell:, model: nil, context: {}, layout: Railroad::Cell::Layout)
    # Automatically merge in the controller and action names
    context.merge!(
      controller_name: controller_name, 
      action_name: action_name, 
      subdomain: request.subdomain
    )
    
    # Render the given cell
		render html: cell(cell, model, context: context, layout: layout)
	end

  ################
  #### Errors ####
  ################

  # https://github.com/ankane/production_rails
  # Adds information to the logs using Lograge gem
  def append_info_to_payload(payload)
    super
    payload[:request_id] = request.uuid
    payload[:host] = request.host
  end

  # Generic endpoint handlers
  # TODO: Define generic handlers and allow for override in each controller action

	# Trailblazer::Endpoint.new.(result) do |m|
	#   m.created         { |result| puts "Created: Model #{result["model"]} was created successfully." }
	#   m.present { |result| puts "Present" }
	#   m.success { |result| render html: cell(Team::Cell::Index, @model, layout: Ahha::Cell::Layout) }
	#   m.not_found { |result| puts "Not found" }
	#   m.unauthenticated { |result| puts "You ain't root!" }
	#   m.invalid { |result| puts "invalid" }
	# end		
end