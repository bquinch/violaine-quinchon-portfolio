class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @experiences = Experience.all.order('start_date desc')
    @message = Message.new
  end
end
