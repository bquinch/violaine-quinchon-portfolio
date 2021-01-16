class MessageMailer < ApplicationMailer
  def contact(message)
    @message = message
    message_params = {
      from: 'violainequinchon@gmail.com',
      to: 'violainequinchon@gmail.com',
      subject: message.subject,
      text: message.content,
      reply_to: message.email,
    }
    mail(message_params)
  # If anything goes wrong, send to bquinchon
  rescue => e
    message_params = {
      from: 'basile.quinchon@gmail.com',
      to: 'basile.quinchon@gmail.com',
      subject: "Error sending mail with subject: #{message.subject}",
      text: "#{message.content} #{e.message}",
      reply_to: message.email,
    }
    mail(message_params)
  end
end
