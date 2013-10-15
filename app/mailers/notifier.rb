class Notifier < ActionMailer::Base
  default from: "ricardo@themakersquare.com" # Change this to your email

  def subscription_confirmation
    @greeting = "Hi"

    # Change the 'to:' section to your partner's name and email
    mail( to: "Partner-name <ricardo@themakersquare.com>",
          subject: "Test")
  end
end
