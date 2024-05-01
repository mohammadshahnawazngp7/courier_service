# frozen_string_literal: true

# Mailer class for handling application-wide email functionality.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
