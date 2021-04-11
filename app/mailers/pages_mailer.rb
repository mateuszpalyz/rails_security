# frozen_string_literal: true

class PagesMailer < ApplicationMailer
  def csrf_mail
    mail(to: 'user@example.com', subject: 'Some nice social engineering mail')
  end
end
