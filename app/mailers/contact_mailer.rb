class ContactMailer < ActionMailer::Base
    default to: '0teachsteve@gmail.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact message form')
    end
end