class StaticpagesController < ApplicationController
  def index
  	# @quotes = Quote.order("RANDOM()");
  	@quote = Quote.order("RANDOM()").last
  end
end
