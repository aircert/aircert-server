class EventController < ApplicationController
  
  def domains
  	Ahoy::Event.all.map(&:properties).each{|property| puts property['domain']}
  end

  def page_view
  	ahoy.track "Page View", {
  		bytes: 0.0000000002 * request.params[:content_length].to_i * 2204.62,
  		domain: request.params[:domain],
  		url: request.params[:url],
  		email: request.params[:email]
  	}


  	Request.create(
  		bytes: 0.0000000002 * request.params[:content_length].to_i * 2204.62,
  		domain: request.params[:domain],
  		url: request.params[:url],
  		email: request.params[:email]
  	)
  end
end
