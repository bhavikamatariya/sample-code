# Download the helper library from https://www.twilio.com/docs/python/install
from twilio.rest import Client


# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
client = Client(account_sid, auth_token)

authorized_connect_app = client \
    .authorized_connect_apps("CNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
    .fetch()

print(authorized_connect_app.account_sid)