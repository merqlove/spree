module Spree
  class OrderMailer < BaseMailer
    helper 'spree/base'

    def confirm_email(order, resend=false)
      @order = order
      subject = (resend ? "[#{t(:resend).upcase}] " : "")
      subject += "#{Spree::Config[:site_name]} #{t('order_mailer.confirm_email.subject')} ##{order.number}"
      mail(:to => order.email,
           :subject => subject,
           :from => from_address)
    end

    def cancel_email(order, resend=false)
      @order = order
      subject = (resend ? "[#{t(:resend).upcase}] " : "")
      subject += "#{Spree::Config[:site_name]} #{t('order_mailer.cancel_email.subject')} ##{order.number}"
      mail(:to => order.email,
           :subject => subject,
           :from => from_address)
    end
  end
end
