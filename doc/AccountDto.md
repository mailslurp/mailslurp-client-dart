# mailslurp.model.AccountDto

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | [**UserDto**](UserDto) |  | 
**subscription** | [**SubscriptionDto**](SubscriptionDto) |  | [optional] 
**addons** | **List<String>** |  | [optional] [default to const []]
**intercomHash** | **String** | disabled | [optional] 
**churnkeyHash** | **String** | disabled | [optional] 
**currentPeriod** | [**CurrentPeriodDto**](CurrentPeriodDto) |  | 
**requiresVerification** | **bool** |  | 
**requiredVerificationTypes** | **List<String>** |  | [optional] [default to const []]
**defaultCurrency** | **String** |  | 
**defaultSchedule** | **String** |  | 
**hasBadSubscriptionItemStatuses** | **bool** |  | [optional] 
**trialsEnabled** | **bool** |  | 
**hasAnyActiveTrialSubscription** | **bool** |  | 
**canEndTrial** | **bool** |  | 
**freeAccountExpiresInDays** | **int** |  | [optional] 
**freeAccountExpired** | **bool** |  | 
**freeAccountEvaluationDenied** | **bool** |  | 
**freeAccountEvaluationDeniedReason** | **String** |  | [optional] 
**freeAccountEvaluationDeniedAllowTrial** | **bool** |  | 
**freeAccountMode** | **String** |  | 
**requiresTermsAndConditionsAgreement** | **bool** |  | [optional] 
**enforceSendingAgreement** | **bool** |  | 
**adminSendPause** | [**AdminSendPauseDto**](AdminSendPauseDto) |  | [optional] 
**organizationName** | **String** |  | [optional] 
**organizationSlug** | **String** |  | [optional] 
**organizationBrandColor** | **String** |  | [optional] 
**organizationLogoUrl** | **String** |  | [optional] 
**userPermissionRole** | **String** |  | [optional] 
**environmentAccounts** | [**EnvironmentAccountsDto**](EnvironmentAccountsDto) |  | [optional] 
**domainPlanQuantity** | **int** |  | 
**assignedDomainCount** | **int** |  | 
**effectiveDomainLimit** | **int** |  | [optional] 
**requiresDashboardOnboardingV2** | **bool** |  | 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


