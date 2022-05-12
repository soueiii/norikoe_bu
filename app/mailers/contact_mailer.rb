class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail from: contact.user.email, subject: 'お問い合せ内容'
  end
end
