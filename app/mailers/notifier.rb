class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def subscription_confirmation(user, project)
    @user = user
    @project = project

    # Change the 'to:' section to your partner's name and email
    mail( to: "#{user.name} <#{user.email}>",
          subject: "Subscribed to #{project.name.capitalize} | Ativa")
  end

  def subscription_cancellation(user, project)
    @user = user
    @project = project

    # Change the 'to:' section to your partner's name and email
    mail( to: "#{user.name} <#{user.email}>",
          subject: "Unsubscribed from #{project.name.capitalize} | Ativa")
  end

  def new_post(post, recipient)
    @post = post
    @project = post.project
    @recipient = recipient

    mail( to: "#{recipient.name} <#{recipient.email}>",
          subject: "New post on #{post.project.name.capitalize} | Ativa")
  end
end
