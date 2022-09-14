# mailslurp.model.WaitForSmsConditions

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phoneNumberId** | **String** | ID of phone number to search within and apply conditions to. Essentially filtering the SMS found to give a count. | 
**limit** | **int** | Limit results | [optional] 
**count** | **int** | Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. | 
**delayTimeout** | **int** | Max time in milliseconds to wait between retries if a `timeout` is specified. | [optional] 
**timeout** | **int** | Max time in milliseconds to retry the `waitFor` operation until conditions are met. | 
**unreadOnly** | **bool** | Apply conditions only to **unread** SMS. All SMS messages begin with `read=false`. An SMS is marked `read=true` when an `SMS` has been returned to the user at least once. For example you have called `getSms` or `waitForSms` etc., or you have viewed the SMS in the dashboard. | [optional] 
**countType** | **String** | How result size should be compared with the expected size. Exactly or at-least matching result? | [optional] 
**matches** | [**List<SmsMatchOption>**](SmsMatchOption) | Conditions that should be matched for an SMS to qualify for results. Each condition will be applied in order to each SMS within a phone number to filter a result list of matching SMSs you are waiting for. | [optional] [default to const []]
**sortDirection** | **String** | Direction to sort matching SMSs by created time | [optional] 
**since** | [**DateTime**](DateTime) | ISO Date Time earliest time of SMS to consider. Filter for matching SMSs that were received after this date | [optional] 
**before** | [**DateTime**](DateTime) | ISO Date Time latest time of SMS to consider. Filter for matching SMSs that were received before this date | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


