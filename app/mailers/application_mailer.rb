# frozen_string_literal: true

# this is a class  ApplicationMailer
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
