# Dart MailSlurp package

## Install

```bash
dart pub add mailslurp
```

## Configure

```dart
import 'package:mailslurp/api.dart';

defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_MAILSLURP_API_KEY';

// use controllers
var api_instance = AliasControllerApi();
var createAliasOptions = CreateAliasOptions(); 

try {
    var result = api_instance.createAlias(createAliasOptions);
    print(result);
} catch (e) {
    print("Exception when calling AliasControllerApi->createAlias: $e\n");
}
```