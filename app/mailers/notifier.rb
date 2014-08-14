class Notifier < ActionMailer::Base

  def contact
    @url  = 'http://vampa.org/login'
    mail(to: "alex.stomp@vampa.org", subject: 'Welcome to My Awesome Site')
  end

end
