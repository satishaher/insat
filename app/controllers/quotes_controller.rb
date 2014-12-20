class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @quotes = current_user.quotes
    respond_with(@quotes)
  end

  def show
    respond_with(@quote)
  end

  def new
    @quote = Quote.new
    respond_with(@quote)
  end

  def edit
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.user = current_user if !current_user.nil?
    @quote.save
    respond_with(@quote)
  end

  def update
    @quote.update(quote_params)
    @quote.user = current_user if !current_user.nil?
    respond_with(@quote)
  end

  def destroy
    @quote.destroy
    respond_with(@quote)
  end

  private
    def set_quote
      @quote = Quote.find(params[:id])
    end

    def quote_params
      params.require(:quote).permit(:name, :maintext, :by, :rating)
    end
end
