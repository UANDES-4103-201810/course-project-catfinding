class FundMailer < ApplicationMailer

  def promise_mail(fund)
    @user = User.find(fund.user_id)
    @fund = fund
    @url = "https://catfinding.herokuapp.com/user_fund_project/%s/confirm" % [@fund.id]
    mail(to: @user.email, subject: 'Confirm purchase')
  end

  def donation_mail(fund)
    @user = User.find(fund.user_id)
    @fund = fund
    @url = "https://catfinding.herokuapp.com/user_fund_project/%s/confirm" % [@fund.id]
    mail(to: @user.email, subject: 'Confirm donation')
  end

end
