module Spree
  class BaseMailer < ActionMailer::Base

    def from_address
      if MailMethod.current && MailMethod.current.preferred_mails_from
        MailMethod.current.preferred_mails_from
      else
        Spree::Config[:mails_from]
      end
    end

  end
end
