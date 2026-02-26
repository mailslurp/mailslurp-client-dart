# Dart MailSlurp package

MailSlurp is a free API for creating email accounts. Send and receive emails from Dart and Flutter code and tests.

## Quick links

- [Pub.dev package](https://pub.dev/packages/mailslurp)
- [GitHub source](https://github.com/mailslurp/mailslurp-client-dart)
- [Get API Key](https://app.mailslurp.com/sign-up/)
- [Documentation](https://docs.mailslurp.com/dart/doc/)

## Install

```bash
dart pub add mailslurp
```

## Configure

First configure the default api client with your MailSlurp API Key:

```dart
import 'package:mailslurp/api.dart';

defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_MAILSLURP_API_KEY';
```

## Use controllers

The MailSlurp Dart library exports controllers that map to the [REST API](https://api.mailslurp.com/swagger-ui.html). Controller methods return Futures that can be consumed in async methods.

```dart
var inboxController = InboxControllerApi();

// future result
Future<Inbox> inbox = inboxController.createInboxWithOptions(CreateInboxDto());

// or async usage
void main() async {
  var inbox = await inboxController.createInboxWithOptions(CreateInboxDto());
}
```

## Create email addresses

You can create real email accounts using the InboxController:

```dart
test('can create email addresses', () async {
    var inboxController = InboxControllerApi();
    var inbox = await inboxController.createInboxWithOptions(CreateInboxDto());
    expect(inbox.emailAddress.contains("@mailslurp"), true);
});
```

## Send emails

Send emails using the InboxController with an `inboxId`:

```dart
test('can send emails', () async {
    var inboxController = InboxControllerApi();
    var inbox = await inboxController.createInboxWithOptions(CreateInboxDto());

    var confirmation = await inboxController.sendEmailAndConfirm(inbox.id,
        sendEmailOptions: SendEmailOptions(
            to: [inbox.emailAddress],
            subject: "Test email",
            body: "<html>My message</html>",
            isHTML: true
        )
    );
    expect(confirmation.inboxId, inbox.id);
});
```

## Receive emails

Receive emails using the WaitForController with an `inboxId` and a timeout.

```dart
test('can receive emails', () async {
    var email = await waitForController.waitForLatestEmail(inboxId: inbox.id, timeout: 30000, unreadOnly: true);
    expect(email.subject, "Test email");
});
```

## Test usage

```dart
import 'dart:io';

import 'package:test/test.dart';
import 'package:mailslurp/api.dart';

void main() async {
  setUp(() {
    // read api key from environment variable
    var apiKey = Platform.environment["API_KEY"];
    expect(apiKey != null, true);

    // set api key and instantiate controllers
    defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = apiKey;
  });

  test('can create email addresses', () async {
    var inboxController = InboxControllerApi();
    var inbox = await inboxController.createInboxWithOptions(CreateInboxDto());
    expect(inbox.emailAddress.contains("@mailslurp"), true);
  });

  test('can send and receive emails', () async {
    var inboxController = InboxControllerApi();
    var waitForController = WaitForControllerApi();

    var inbox = await inboxController.createInboxWithOptions(CreateInboxDto());

    var confirmation = await inboxController.sendEmailAndConfirm(inbox.id,
        sendEmailOptions: SendEmailOptions(
            to: [inbox.emailAddress],
            subject: "Test email",
            body: "<html>My message</html>",
            isHTML: true
        )
    );
    expect(confirmation.inboxId, inbox.id);

    var email = await waitForController.waitForLatestEmail(inboxId: inbox.id, timeout: 30000, unreadOnly: true);
    expect(email.subject, "Test email");
  });
}
```
