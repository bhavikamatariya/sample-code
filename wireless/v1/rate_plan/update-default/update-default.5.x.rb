# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

rate_plan = @client.wireless.rate_plans('WPaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
                            .update(unique_name: 'unique_name')

puts rate_plan.sid