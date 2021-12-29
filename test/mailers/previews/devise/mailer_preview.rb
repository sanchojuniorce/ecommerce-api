class Devise::MailerPreview < ActionMailer::Preview
    def reset_password_instructions
      Devise::Mailer.reset_password_instructions(User.first, {})
    end
  end