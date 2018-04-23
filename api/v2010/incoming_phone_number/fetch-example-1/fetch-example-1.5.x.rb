# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

incoming_phone_number = @client
  .incoming_phone_numbers('PN2a0747eba6abf96b7e3c3ff0b4530f6e')
  .fetch

puts incoming_phone_number.account_sid
