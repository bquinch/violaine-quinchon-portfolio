class MessageMailer < ApplicationMailer
  def contact(message)
    @message = message
    message_params = {
      from: ENV["DEVELOPER_EMAIL_ADDRESS"],
      to: 'violainequinchon@gmail.com',
      subject: message.subject,
      text: message.content,
      reply_to: message.email,
    }
    mail(message_params)
  # If anything goes wrong, send to bquinchon
  rescue Net::SMTPFatalError => e
    message_params = {
      from: ENV["DEVELOPER_EMAIL_ADDRESS"],
      to: ENV["DEVELOPER_EMAIL_ADDRESS"],
      subject: "Error sending mail with subject: #{message.subject}",
      text: "#{message.content} #{e.message}",
      reply_to: message.email,
    }
    mail(message_params)
  end
end
