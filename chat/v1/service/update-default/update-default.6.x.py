# Download the helper library from https://www.twilio.com/docs/python/install
from twilio.rest import Client


# Your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
auth_token = 'your_auth_token'
client = Client(account_sid, auth_token)

service = client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                        .update(friendly_name="friendly_name")

print(service.sid)