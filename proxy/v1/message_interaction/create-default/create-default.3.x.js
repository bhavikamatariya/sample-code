// Download the helper library from https://www.twilio.com/docs/node/install
// Your Account Sid and Auth Token from twilio.com/console
const accountSid = 'ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa';
const authToken = 'your_auth_token';
const client = require('twilio')(accountSid, authToken);

client.proxy.services('KSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
            .sessions('KCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
            .participants('KPaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
            .messageInteractions
            .create({body: 'body'})
            .then(message_interaction => console.log(message_interaction.sid))
            .done();