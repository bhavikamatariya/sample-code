// Install the C# / .NET helper library from twilio.com/docs/csharp/install

using System;
using System.Collections.Generic;
using Twilio;
using Twilio.Converters;
using Twilio.Rest.Chat.V2.Service;


class Program 
{
    static void Main(string[] args)
    {
        // Find your Account Sid and Token at twilio.com/console
        const string accountSid = "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
        const string authToken = "your_auth_token";

        TwilioClient.Init(accountSid, authToken);

        var role = RoleResource.Create(
            pathServiceSid: "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
            friendlyName: "FriendlyName",
            type: RoleResource.RoleTypeEnum.Channel,
            permission: Promoter.ListOfOne("Permission")
        );

        Console.WriteLine(role.Sid);
    }
}