class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @experiences = Experience.all.order('end_date desc')
    @message = Message.new
  end
end
