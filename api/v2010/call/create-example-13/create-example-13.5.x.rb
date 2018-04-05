# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

call = @client.calls.create(
                       from: '+18668675310',
                       to: '+14155551212',
                       method: 'GET',
                       send_digits: '1234#',
                       url: 'http://demo.twilio.com/docs/voice.xml'
                     )

puts call.sid