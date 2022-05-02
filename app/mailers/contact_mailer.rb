class ContactMailer < ApplicationMailer

  def contact_mail(contact)
    @contact = contact
    mail to: 'kumamon0136w@gmail.com', subject: 'お問い合せ内容'
  end

end
