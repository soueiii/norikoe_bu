class ApplicationMailer < ActionMailer::Base
 @inquiry = inquiry
 mail(
   from: 'system@example.com',
   to: 'kumamon0136w@gmail.com',
   subject: 'お問合せ通知'
   )
end

