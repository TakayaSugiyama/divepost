class ContactMailer < ApplicationMailer
  default from: 'from@example.com'

  def contact_mail(user,agenda)
    @email = user.email
    mail to: @email, subject: "#{agenda.team.name}のアジェンダ「#{agenda.title}」が削除されました。"
  end
end
