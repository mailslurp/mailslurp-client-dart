# mailslurp.model.WaitForConditions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inboxId** | **String** |  | [optional] 
**count** | **int** | Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. | [optional] 
**delayTimeout** | **int** | Max time in milliseconds to wait between retries if a `timeout` is specified. | [optional] 
**timeout** | **int** | Max time in milliseconds to retry the `waitFor` operation until conditions are met. | 
**unreadOnly** | **bool** | Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard. | [optional] 
**countType** | **String** | How result size should be compared with the expected size. Exactly or at-least matching result? | [optional] 
**matches** | [**List<MatchOption>**](MatchOption) |  | [optional] [default to const []]
**sortDirection** | **String** |  | [optional] 
**since** | [**DateTime**](DateTime) |  | [optional] 
**before** | [**DateTime**](DateTime) |  | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


