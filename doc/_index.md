# Dart MailSlurp documentation

## Quick links
- [Pub.dev package](https://pub.dev/packages/mailslurp)
- [GitHub source](https://github.com/mailslurp/mailslurp-client-dart)
- [Get API Key](https://app.mailslurp.com/sign-up/)

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
