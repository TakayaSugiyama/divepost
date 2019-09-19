class MoveMailer < ApplicationMailer
  default from: 'from@example.com'

  def move_mail(team)
    @team = team
    @email = @team.owner.email
    mail to: @email, subject: 'チームのオーナー権限があなたに譲渡されました'
  end
end
