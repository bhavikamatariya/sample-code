# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new(account_sid, auth_token)

sync_list_permission = @client.preview.sync
                              .services('ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
                              .sync_lists('ESaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
                              .sync_list_permissions('identity')
                              .update(read: true, write: true, manage: true)

puts sync_list_permission.account_sid