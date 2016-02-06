class UserMailer < ApplicationMailer
  def wellcomemail(mailholder, member)
    @mailholder = mailholder
    @member = member
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @mailholder, :subject => 'Provisional registration with NFBM – pune.', :template_path => 'user_mailer', :template_name => 'wellcomemail')
  end
  def infotoadmin(scr, u)
    @scr = scr
    @u = u
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @u, :subject => 'Scribe request.', :template_path => 'user_mailer', :template_name => 'infotoadmin')
  end
  def infotomember(scr, u)
    @scr = scr
    @u = u
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @scr.member_email, :subject => 'Your request for scribe', :template_path => 'user_mailer', :template_name => 'infotomember')
  end
  def mailtoscribe(scrb)
    @scrb = scrb
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @scrb.scribe_email, :subject => 'Your nomination for the scribe', :template_path => 'user_mailer', :template_name => 'mailtoscribe')

  end
  def scribeinfotomember(scrm)
    @scrm = scrm
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @scrm.member_email, :subject => 'Scribe details', :template_path => 'user_mailer', :template_name => 'scribeinfotomember')

  end
  def rejectedrequest(scr)
    @scr = scr

    mail(:from => "noreplytonfbmpune@gmail.com", :to => @scr.member_email, :subject => 'Scribe request rejected', :template_path => 'user_mailer', :template_name => 'rejectedrequest')
  end
  def changerole(user)
    @user = user
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @user.member.contactinfo.email, :subject => 'Your role changed', :template_path => 'user_mailer', :template_name => 'changerole')
  end
  def clerklevel(member, user)
    @member = member
    @user = user
    mail(:from => "noreplytonfbmpune@gmail.com", :to => @user, :subject => "Membership request", :template_path => "user_mailer", :template_name => "clerklevel")
  end
  def adminlevel(mailwalababa, member)
    @mailwalababa = mailwalababa
    @member = member
    mail(:from => 'noreplytonfbmpune@gmail.com', :to => @mailwalababa, :subject => 'Intimation regarding your membership', :template_path => 'user_mailer', :template_name => 'adminlevel')
  end
  def patangrav(user, message)
    @user = user
    @message = message
    mail(:from => 'noreplytonfbmpune@gmail.com', :to => @user, :subject => 'New message leave by a guest user', :template_path => 'user_mailer', :template_name => 'message')
  end
  def donar(donation)
    @donation = donation
    mail(:from => 'noreplytonfbmpune@gmail.com', :to => @donation.donar_email, :subject => "Donation acknowledgement", :template_path => 'user_mailer', :template_name => 'donar')
  end
  def admindonar(user)
    @user = user
    mail(:from => 'noreplytonfbmpune@gmail.com', :to => @user, :subject => 'Donation request', :template_path => 'user_mailer', :template_name => 'admindonar')
  end
  def dasaram(scribe)
    @scribe = scribe
    mail(:from => 'noreplytonfbmpune@gmail.com', :to => @scribe.email, :subject => 'successful Registration for scribe', :template_path => 'user_mailer', :template_name => 'dasaram')
  end
end
