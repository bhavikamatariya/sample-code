# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

outgoing_caller_id = @client
  .outgoing_caller_ids('PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
  .update(friendly_name: 'friendly_name')

puts outgoing_caller_id.sid