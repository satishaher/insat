class StaticpagesController < ApplicationController
  def index
  	@quotes = Quote.order("RANDOM()");
  end
end
