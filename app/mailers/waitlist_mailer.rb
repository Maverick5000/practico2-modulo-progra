class WaitlistMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    def notify
        @client = params[:client]
        @tape  = params[:tape]
        # mail(to: @client.email, subject: 'Welcome to My Awesome Site')
        mail(to: @client.email, subject: 'Notification')
    end
end
