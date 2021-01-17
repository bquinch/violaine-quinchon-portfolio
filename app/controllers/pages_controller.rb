class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @experiences = Experience.all.order('start_date desc')
    @message = Message.new
  end

  def sendgrid_webhooks
    params["_json"].each do |payload|
      @message.create(
        subject: "Sendgrid response",
        content: payload["smtp-id"],
        name: "SG_WEBHOOK",
        email: ENV["DEVELOPER_EMAIL_ADDRESS"]
      )
    end
  end
end
