class Notifier < ActionMailer::Base

  def contact
    @url  = 'http://vampa.org/login'
    mail(to: "alex.stomp@vampa.org", subject: 'TEST')
  end

  def test
    mail(from: "no-reply@vampa.org", to: "alex@clusterflunk.com, jayd3e@clusterflunk.com, aj@clusterflunk.com, brent@clusterflunk.com", subject: 'TEST EMAIL TEMPLATE')
  end

end
