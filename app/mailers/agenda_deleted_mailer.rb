class AgendaDeletedMailer < ApplicationMailer
  default from: 'elefish19920509@gmail.com'
  
  def agenda_deleted_mail(agenda)
    @members = agenda.team.members
    mail to: @members.map(&:email).join(','),subject: 'アジェンダ削除の通知'
  end
end