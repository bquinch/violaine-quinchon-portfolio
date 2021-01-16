# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview
  def contact
    @message = Message.find_or_create_by!(
      name: "Violaine Quinchon",
      email: "violainequinchon@gmail.com",
      subject: "You're awesome!",
      content: "Lorem Ipsum blabla"
    )
    puts @message.subject
    MessageMailer.contact(@message)
  end
end
