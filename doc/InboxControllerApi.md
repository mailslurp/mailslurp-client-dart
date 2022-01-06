# mailslurp.api.InboxControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInbox**](InboxControllerApi#createinbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
[**createInboxRuleset**](InboxControllerApi#createinboxruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**createInboxWithDefaults**](InboxControllerApi#createinboxwithdefaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**createInboxWithOptions**](InboxControllerApi#createinboxwithoptions) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**deleteAllInboxes**](InboxControllerApi#deleteallinboxes) | **DELETE** /inboxes | Delete all inboxes
[**deleteInbox**](InboxControllerApi#deleteinbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**doesInboxExist**](InboxControllerApi#doesinboxexist) | **GET** /inboxes/exists | Does inbox exist
[**flushExpired**](InboxControllerApi#flushexpired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**getAllInboxes**](InboxControllerApi#getallinboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**getEmails**](InboxControllerApi#getemails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**getInbox**](InboxControllerApi#getinbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**getInboxCount**](InboxControllerApi#getinboxcount) | **GET** /inboxes/count | Get total inbox count
[**getInboxEmailCount**](InboxControllerApi#getinboxemailcount) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**getInboxEmailsPaginated**](InboxControllerApi#getinboxemailspaginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**getInboxSentEmails**](InboxControllerApi#getinboxsentemails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**getInboxTags**](InboxControllerApi#getinboxtags) | **GET** /inboxes/tags | Get inbox tags
[**getInboxes**](InboxControllerApi#getinboxes) | **GET** /inboxes | List Inboxes and email addresses
[**getOrganizationInboxes**](InboxControllerApi#getorganizationinboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**listInboxRulesets**](InboxControllerApi#listinboxrulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**listInboxTrackingPixels**](InboxControllerApi#listinboxtrackingpixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**sendEmail**](InboxControllerApi#sendemail) | **POST** /inboxes/{inboxId} | Send Email
[**sendEmailAndConfirm**](InboxControllerApi#sendemailandconfirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**sendTestEmail**](InboxControllerApi#sendtestemail) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**setInboxFavourited**](InboxControllerApi#setinboxfavourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**updateInbox**](InboxControllerApi#updateinbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.


# **createInbox**
> InboxDto createInbox(aCustomEmailAddressToUseWithTheInboxPeriodDefaultsToNullPeriodWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAsBacktick123AtMailslurpPeriodComBacktickPeriodIfYouUseTheBacktickUseDomainPoolBacktickOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAsBacktick123AtMailslurpPeriodInfoBacktickOrBacktick123AtMailslurpPeriodBizBacktickPeriodWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserPeriodIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainPeriodNoteDomainTypesMustMatchTheInboxTypeSoBacktickSMTPBacktickInboxesWillOnlyWorkWithBacktickSMTPBacktickTypeDomainsPeriodAvoidBacktickSMTPBacktickInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceivePeriodSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouPeriodToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxIDPeriod, tagsThatInboxHasBeenTaggedWithPeriodTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountPeriodYouCanAlsoSearchForInboxesByTagInTheDashboardUIPeriod, optionalNameOfTheInboxPeriodDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmailsPeriod, optionalDescriptionOfTheInboxForLabellingPurposesPeriodIsShownInTheDashboardAndCanBeUsedWith, useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressPeriodDefaultsToNullPeriodIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsPeriodThisIsUsefulWhenTheDefaultBacktickAtMailslurpPeriodComBacktickEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServicePeriodWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInBacktickAtMailslurpPeriodLeftCurlyBracketWorldCommaInfoCommaXyzCommaPeriodPeriodPeriodRightCurlyBracketBacktickPeriodThisMeansATLDIsRandomlySelectingFromAListOfBacktickPeriodBizBacktickCommaBacktickPeriodInfoBacktickCommaBacktickPeriodXyzBacktickEtcToAddVarianceToTheGeneratedEmailAddressesPeriodWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfBacktickAtMailslurpPeriodComBacktickOrCustomEmailAddressProvidedByTheEmailAddressFieldPeriodNoteThisFeatureIsOnlyAvailableForBacktickHTTPBacktickInboxTypesPeriod, isTheInboxAFavoritePeriodMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering, optionalInboxExpirationDatePeriodIfNullThenThisInboxIsPermanentAndTheEmailsInItWonQuoteTBeDeletedPeriodIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedPeriodExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsPeriodAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedPeriodTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdQuoteTQuoteHHColonMmColonSsPeriodSSSXXXPeriod, numberOfMillisecondsThatInboxShouldExistFor, dEPRECATEDLeftParenthesisTeamAccessIsAlwaysTrueRightParenthesisPeriodGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganizationPeriod, hTTPLeftParenthesisDefaultRightParenthesisOrSMTPInboxTypePeriodHTTPInboxesAreDefaultAndBestSolutionForMostCasesPeriodSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionLeftParenthesisButDoNotSupportSendingEmailsRightParenthesisPeriodWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypePeriodHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtBacktickMxPeriodMailslurpPeriodComBacktickPeriod)

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final aCustomEmailAddressToUseWithTheInboxPeriodDefaultsToNullPeriodWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAsBacktick123AtMailslurpPeriodComBacktickPeriodIfYouUseTheBacktickUseDomainPoolBacktickOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAsBacktick123AtMailslurpPeriodInfoBacktickOrBacktick123AtMailslurpPeriodBizBacktickPeriodWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserPeriodIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainPeriodNoteDomainTypesMustMatchTheInboxTypeSoBacktickSMTPBacktickInboxesWillOnlyWorkWithBacktickSMTPBacktickTypeDomainsPeriodAvoidBacktickSMTPBacktickInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceivePeriodSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouPeriodToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxIDPeriod = aCustomEmailAddressToUseWithTheInboxPeriodDefaultsToNullPeriodWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAsBacktick123AtMailslurpPeriodComBacktickPeriodIfYouUseTheBacktickUseDomainPoolBacktickOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAsBacktick123AtMailslurpPeriodInfoBacktickOrBacktick123AtMailslurpPeriodBizBacktickPeriodWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserPeriodIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainPeriodNoteDomainTypesMustMatchTheInboxTypeSoBacktickSMTPBacktickInboxesWillOnlyWorkWithBacktickSMTPBacktickTypeDomainsPeriodAvoidBacktickSMTPBacktickInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceivePeriodSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouPeriodToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxIDPeriod_example; // String | 
final tagsThatInboxHasBeenTaggedWithPeriodTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountPeriodYouCanAlsoSearchForInboxesByTagInTheDashboardUIPeriod = []; // List<String> | 
final optionalNameOfTheInboxPeriodDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmailsPeriod = optionalNameOfTheInboxPeriodDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmailsPeriod_example; // String | 
final optionalDescriptionOfTheInboxForLabellingPurposesPeriodIsShownInTheDashboardAndCanBeUsedWith = optionalDescriptionOfTheInboxForLabellingPurposesPeriodIsShownInTheDashboardAndCanBeUsedWith_example; // String | 
final useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressPeriodDefaultsToNullPeriodIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsPeriodThisIsUsefulWhenTheDefaultBacktickAtMailslurpPeriodComBacktickEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServicePeriodWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInBacktickAtMailslurpPeriodLeftCurlyBracketWorldCommaInfoCommaXyzCommaPeriodPeriodPeriodRightCurlyBracketBacktickPeriodThisMeansATLDIsRandomlySelectingFromAListOfBacktickPeriodBizBacktickCommaBacktickPeriodInfoBacktickCommaBacktickPeriodXyzBacktickEtcToAddVarianceToTheGeneratedEmailAddressesPeriodWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfBacktickAtMailslurpPeriodComBacktickOrCustomEmailAddressProvidedByTheEmailAddressFieldPeriodNoteThisFeatureIsOnlyAvailableForBacktickHTTPBacktickInboxTypesPeriod = true; // bool | 
final isTheInboxAFavoritePeriodMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering = true; // bool | 
final optionalInboxExpirationDatePeriodIfNullThenThisInboxIsPermanentAndTheEmailsInItWonQuoteTBeDeletedPeriodIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedPeriodExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsPeriodAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedPeriodTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdQuoteTQuoteHHColonMmColonSsPeriodSSSXXXPeriod = 2013-10-20T19:20:30+01:00; // DateTime | 
final numberOfMillisecondsThatInboxShouldExistFor = 789; // int | 
final dEPRECATEDLeftParenthesisTeamAccessIsAlwaysTrueRightParenthesisPeriodGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganizationPeriod = true; // bool | 
final hTTPLeftParenthesisDefaultRightParenthesisOrSMTPInboxTypePeriodHTTPInboxesAreDefaultAndBestSolutionForMostCasesPeriodSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionLeftParenthesisButDoNotSupportSendingEmailsRightParenthesisPeriodWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypePeriodHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtBacktickMxPeriodMailslurpPeriodComBacktickPeriod = hTTPLeftParenthesisDefaultRightParenthesisOrSMTPInboxTypePeriodHTTPInboxesAreDefaultAndBestSolutionForMostCasesPeriodSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionLeftParenthesisButDoNotSupportSendingEmailsRightParenthesisPeriodWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypePeriodHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtBacktickMxPeriodMailslurpPeriodComBacktickPeriod_example; // String | 

try { 
    final result = api_instance.createInbox(aCustomEmailAddressToUseWithTheInboxPeriodDefaultsToNullPeriodWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAsBacktick123AtMailslurpPeriodComBacktickPeriodIfYouUseTheBacktickUseDomainPoolBacktickOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAsBacktick123AtMailslurpPeriodInfoBacktickOrBacktick123AtMailslurpPeriodBizBacktickPeriodWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserPeriodIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainPeriodNoteDomainTypesMustMatchTheInboxTypeSoBacktickSMTPBacktickInboxesWillOnlyWorkWithBacktickSMTPBacktickTypeDomainsPeriodAvoidBacktickSMTPBacktickInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceivePeriodSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouPeriodToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxIDPeriod, tagsThatInboxHasBeenTaggedWithPeriodTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountPeriodYouCanAlsoSearchForInboxesByTagInTheDashboardUIPeriod, optionalNameOfTheInboxPeriodDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmailsPeriod, optionalDescriptionOfTheInboxForLabellingPurposesPeriodIsShownInTheDashboardAndCanBeUsedWith, useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressPeriodDefaultsToNullPeriodIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsPeriodThisIsUsefulWhenTheDefaultBacktickAtMailslurpPeriodComBacktickEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServicePeriodWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInBacktickAtMailslurpPeriodLeftCurlyBracketWorldCommaInfoCommaXyzCommaPeriodPeriodPeriodRightCurlyBracketBacktickPeriodThisMeansATLDIsRandomlySelectingFromAListOfBacktickPeriodBizBacktickCommaBacktickPeriodInfoBacktickCommaBacktickPeriodXyzBacktickEtcToAddVarianceToTheGeneratedEmailAddressesPeriodWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfBacktickAtMailslurpPeriodComBacktickOrCustomEmailAddressProvidedByTheEmailAddressFieldPeriodNoteThisFeatureIsOnlyAvailableForBacktickHTTPBacktickInboxTypesPeriod, isTheInboxAFavoritePeriodMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering, optionalInboxExpirationDatePeriodIfNullThenThisInboxIsPermanentAndTheEmailsInItWonQuoteTBeDeletedPeriodIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedPeriodExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsPeriodAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedPeriodTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdQuoteTQuoteHHColonMmColonSsPeriodSSSXXXPeriod, numberOfMillisecondsThatInboxShouldExistFor, dEPRECATEDLeftParenthesisTeamAccessIsAlwaysTrueRightParenthesisPeriodGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganizationPeriod, hTTPLeftParenthesisDefaultRightParenthesisOrSMTPInboxTypePeriodHTTPInboxesAreDefaultAndBestSolutionForMostCasesPeriodSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionLeftParenthesisButDoNotSupportSendingEmailsRightParenthesisPeriodWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypePeriodHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtBacktickMxPeriodMailslurpPeriodComBacktickPeriod);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->createInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aCustomEmailAddressToUseWithTheInboxPeriodDefaultsToNullPeriodWhenNullMailSlurpWillAssignARandomEmailAddressToTheInboxSuchAsBacktick123AtMailslurpPeriodComBacktickPeriodIfYouUseTheBacktickUseDomainPoolBacktickOptionWhenTheEmailAddressIsNullItWillGenerateAnEmailAddressWithAMoreVariedDomainEndingSuchAsBacktick123AtMailslurpPeriodInfoBacktickOrBacktick123AtMailslurpPeriodBizBacktickPeriodWhenACustomEmailAddressIsProvidedTheAddressIsSplitIntoADomainAndTheDomainIsQueriedAgainstYourUserPeriodIfYouHaveCreatedTheDomainInTheMailSlurpDashboardAndVerifiedItYouCanUseAnyEmailAddressThatEndsWithTheDomainPeriodNoteDomainTypesMustMatchTheInboxTypeSoBacktickSMTPBacktickInboxesWillOnlyWorkWithBacktickSMTPBacktickTypeDomainsPeriodAvoidBacktickSMTPBacktickInboxesIfYouNeedToSendEmailsAsTheyCanOnlyReceivePeriodSendAnEmailToThisAddressAndTheInboxWillReceiveAndStoreItForYouPeriodToRetrieveTheEmailUseTheInboxAndEmailControllerEndpointsWithTheInboxIDPeriod** | **String**|  | [optional] 
 **tagsThatInboxHasBeenTaggedWithPeriodTagsCanBeAddedToInboxesToGroupDifferentInboxesWithinAnAccountPeriodYouCanAlsoSearchForInboxesByTagInTheDashboardUIPeriod** | [**List<String>**](String)|  | [optional] [default to const []]
 **optionalNameOfTheInboxPeriodDisplayedInTheDashboardForEasierSearchAndUsedAsTheSenderNameWhenSendingEmailsPeriod** | **String**|  | [optional] 
 **optionalDescriptionOfTheInboxForLabellingPurposesPeriodIsShownInTheDashboardAndCanBeUsedWith** | **String**|  | [optional] 
 **useTheMailSlurpDomainNamePoolWithThisInboxWhenCreatingTheEmailAddressPeriodDefaultsToNullPeriodIfEnabledTheInboxWillBeAnEmailAddressWithADomainRandomlyChosenFromAListOfTheMailSlurpDomainsPeriodThisIsUsefulWhenTheDefaultBacktickAtMailslurpPeriodComBacktickEmailAddressesUsedWithInboxesAreBlockedOrConsideredSpamByAProviderOrReceivingServicePeriodWhenDomainPoolIsEnabledAnEmailAddressWillBeGeneratedEndingInBacktickAtMailslurpPeriodLeftCurlyBracketWorldCommaInfoCommaXyzCommaPeriodPeriodPeriodRightCurlyBracketBacktickPeriodThisMeansATLDIsRandomlySelectingFromAListOfBacktickPeriodBizBacktickCommaBacktickPeriodInfoBacktickCommaBacktickPeriodXyzBacktickEtcToAddVarianceToTheGeneratedEmailAddressesPeriodWhenNullOrFalseMailSlurpUsesTheDefaultBehaviorOfBacktickAtMailslurpPeriodComBacktickOrCustomEmailAddressProvidedByTheEmailAddressFieldPeriodNoteThisFeatureIsOnlyAvailableForBacktickHTTPBacktickInboxTypesPeriod** | **bool**|  | [optional] 
 **isTheInboxAFavoritePeriodMarkingAnInboxAsAFavoriteIsTypicallyDoneInTheDashboardForQuickAccessOrFiltering** | **bool**|  | [optional] 
 **optionalInboxExpirationDatePeriodIfNullThenThisInboxIsPermanentAndTheEmailsInItWonQuoteTBeDeletedPeriodIfAnExpirationDateIsProvidedOrIsRequiredByYourPlanTheInboxWillBeClosedWhenTheExpirationTimeIsReachedPeriodExpiredInboxesStillContainTheirEmailsButCanNoLongerSendOrReceiveEmailsPeriodAnExpiredInboxRecordIsCreatedWhenAnInboxAndTheEmailAddressAndInboxIDAreRecordedPeriodTheExpiresAtPropertyIsATimestampStringInISODateTimeFormatYyyyMMDdQuoteTQuoteHHColonMmColonSsPeriodSSSXXXPeriod** | **DateTime**|  | [optional] 
 **numberOfMillisecondsThatInboxShouldExistFor** | **int**|  | [optional] 
 **dEPRECATEDLeftParenthesisTeamAccessIsAlwaysTrueRightParenthesisPeriodGrantTeamAccessToThisInboxAndTheEmailsThatBelongToItForTeamMembersOfYourOrganizationPeriod** | **bool**|  | [optional] 
 **hTTPLeftParenthesisDefaultRightParenthesisOrSMTPInboxTypePeriodHTTPInboxesAreDefaultAndBestSolutionForMostCasesPeriodSMTPInboxesAreMoreReliableForPublicInboundEmailConsumptionLeftParenthesisButDoNotSupportSendingEmailsRightParenthesisPeriodWhenUsingCustomDomainsTheDomainTypeMustMatchTheInboxTypePeriodHTTPInboxesAreProcessedByAWSSESWhileSMTPInboxesUseACustomMailServerRunningAtBacktickMxPeriodMailslurpPeriodComBacktickPeriod** | **String**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxRuleset**
> InboxRulesetDto createInboxRuleset(inboxId, createInboxRulesetOptions)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final createInboxRulesetOptions = CreateInboxRulesetOptions(); // CreateInboxRulesetOptions | 

try { 
    final result = api_instance.createInboxRuleset(inboxId, createInboxRulesetOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->createInboxRuleset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **createInboxRulesetOptions** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithDefaults**
> InboxDto createInboxWithDefaults()

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();

try { 
    final result = api_instance.createInboxWithDefaults();
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->createInboxWithDefaults: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **createInboxWithOptions**
> InboxDto createInboxWithOptions(createInboxDto)

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final createInboxDto = CreateInboxDto(); // CreateInboxDto | 

try { 
    final result = api_instance.createInboxWithOptions(createInboxDto);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->createInboxWithOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInboxDto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteAllInboxes**
> deleteAllInboxes()

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();

try { 
    api_instance.deleteAllInboxes();
} catch (e) {
    print('Exception when calling InboxControllerApi->deleteAllInboxes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **deleteInbox**
> deleteInbox(inboxId)

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.deleteInbox(inboxId);
} catch (e) {
    print('Exception when calling InboxControllerApi->deleteInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **doesInboxExist**
> InboxExistsDto doesInboxExist(emailAddress)

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final emailAddress = emailAddress_example; // String | Email address

try { 
    final result = api_instance.doesInboxExist(emailAddress);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->doesInboxExist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**| Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **flushExpired**
> FlushExpiredInboxesResult flushExpired(before)

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional expired at before flag to flush expired inboxes that have expired before the given time

try { 
    final result = api_instance.flushExpired(before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->flushExpired: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllInboxes**
> PageInboxProjection getAllInboxes(page, size, sort, favourite, search, tag, dEPRECATEDPeriodOptionallyFilterByTeamAccessPeriod, since, before)

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final favourite = true; // bool | Optionally filter results for favourites only
final search = search_example; // String | Optionally filter by search words partial matching ID, tags, name, and email address
final tag = tag_example; // String | Optionally filter by tags. Will return inboxes that include given tags
final dEPRECATEDPeriodOptionallyFilterByTeamAccessPeriod = true; // bool | 
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created before given date time

try { 
    final result = api_instance.getAllInboxes(page, size, sort, favourite, search, tag, dEPRECATEDPeriodOptionallyFilterByTeamAccessPeriod, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getAllInboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **favourite** | **bool**| Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **dEPRECATEDPeriodOptionallyFilterByTeamAccessPeriod** | **bool**|  | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getEmails**
> List<EmailPreview> getEmails(idOfInboxThatEmailsBelongsTo, aliasForLimitPeriodAssessedFirstBeforeAssessingAnyPassedLimitPeriod, limit, sortTheResultsByReceivedDateAndDirectionASCOrDESC, retryTimeout, delayTimeout, minCount, unreadOnly, excludeEmailsReceivedAfterThisISO8601DateTime, excludeEmailsReceivedBeforeThisISO8601DateTime)

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final idOfInboxThatEmailsBelongsTo = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final aliasForLimitPeriodAssessedFirstBeforeAssessingAnyPassedLimitPeriod = 56; // int | 
final limit = 56; // int | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
final sortTheResultsByReceivedDateAndDirectionASCOrDESC = sortTheResultsByReceivedDateAndDirectionASCOrDESC_example; // String | 
final retryTimeout = 789; // int | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
final delayTimeout = 789; // int | 
final minCount = 789; // int | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
final unreadOnly = true; // bool | 
final excludeEmailsReceivedAfterThisISO8601DateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final excludeEmailsReceivedBeforeThisISO8601DateTime = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    final result = api_instance.getEmails(idOfInboxThatEmailsBelongsTo, aliasForLimitPeriodAssessedFirstBeforeAssessingAnyPassedLimitPeriod, limit, sortTheResultsByReceivedDateAndDirectionASCOrDESC, retryTimeout, delayTimeout, minCount, unreadOnly, excludeEmailsReceivedAfterThisISO8601DateTime, excludeEmailsReceivedBeforeThisISO8601DateTime);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**String**]()|  | 
 **aliasForLimitPeriodAssessedFirstBeforeAssessingAnyPassedLimitPeriod** | **int**|  | [optional] 
 **limit** | **int**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sortTheResultsByReceivedDateAndDirectionASCOrDESC** | **String**|  | [optional] 
 **retryTimeout** | **int**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delayTimeout** | **int**|  | [optional] 
 **minCount** | **int**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unreadOnly** | **bool**|  | [optional] 
 **excludeEmailsReceivedAfterThisISO8601DateTime** | **DateTime**|  | [optional] 
 **excludeEmailsReceivedBeforeThisISO8601DateTime** | **DateTime**|  | [optional] 

### Return type

[**List<EmailPreview>**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInbox**
> InboxDto getInbox(inboxId)

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getInbox(inboxId);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxCount**
> CountDto getInboxCount()

Get total inbox count

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();

try { 
    final result = api_instance.getInboxCount();
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailCount**
> CountDto getInboxEmailCount(idOfInboxThatEmailsBelongsTo)

Get email count in inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final idOfInboxThatEmailsBelongsTo = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    final result = api_instance.getInboxEmailCount(idOfInboxThatEmailsBelongsTo);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxEmailCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**String**]()|  | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxEmailsPaginated**
> PageEmailPreview getInboxEmailsPaginated(idOfInboxThatEmailsBelongsTo, page, size, sort, since, before)

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final idOfInboxThatEmailsBelongsTo = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in inbox emails list pagination
final size = 56; // int | Optional page size in inbox emails list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by received after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by received before given date time

try { 
    final result = api_instance.getInboxEmailsPaginated(idOfInboxThatEmailsBelongsTo, page, size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxEmailsPaginated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idOfInboxThatEmailsBelongsTo** | [**String**]()|  | 
 **page** | **int**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxSentEmails**
> PageSentEmailProjection getInboxSentEmails(inboxId, page, optionalPageSizeInInboxSentEmailListPagination, sort, searchFilter, since, before)

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in inbox sent email list pagination
final optionalPageSizeInInboxSentEmailListPagination = 56; // int | 
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional sent email search
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by sent before given date time

try { 
    final result = api_instance.getInboxSentEmails(inboxId, page, optionalPageSizeInInboxSentEmailListPagination, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxSentEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **page** | **int**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **optionalPageSizeInInboxSentEmailListPagination** | **int**|  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional sent email search | [optional] 
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxTags**
> Set<String> getInboxTags()

Get inbox tags

Get all inbox tags

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();

try { 
    final result = api_instance.getInboxTags();
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxTags: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Set<String>**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getInboxes**
> List<InboxDto> getInboxes(size, sort, since, before)

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final size = 56; // int | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created before given date time

try { 
    final result = api_instance.getInboxes(size, sort, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getInboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries. | [optional] [default to 100]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**List<InboxDto>**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getOrganizationInboxes**
> PageOrganizationInboxProjection getOrganizationInboxes(page, size, sort, searchFilter, since, before)

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final page = 56; // int | Optional page index in list pagination
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created before given date time

try { 
    final result = api_instance.getOrganizationInboxes(page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->getOrganizationInboxes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxRulesets**
> PageInboxRulesetDto listInboxRulesets(inboxId, page, size, sort, searchFilter, since, before)

List inbox rulesets

List all rulesets attached to an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in inbox ruleset list pagination
final size = 56; // int | Optional page size in inbox ruleset list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created before given date time

try { 
    final result = api_instance.listInboxRulesets(inboxId, page, size, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->listInboxRulesets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **page** | **int**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **int**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **listInboxTrackingPixels**
> PageTrackingPixelProjection listInboxTrackingPixels(inboxId, page, optionalPageSizeInInboxTrackingPixelListPagination, sort, searchFilter, since, before)

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | Optional page index in inbox tracking pixel list pagination
final optionalPageSizeInInboxTrackingPixelListPagination = 56; // int | 
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created after given date time
final before = 2013-10-20T19:20:30+01:00; // DateTime | Optional filter by created before given date time

try { 
    final result = api_instance.listInboxTrackingPixels(inboxId, page, optionalPageSizeInInboxTrackingPixelListPagination, sort, searchFilter, since, before);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->listInboxTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **page** | **int**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **optionalPageSizeInInboxTrackingPixelListPagination** | **int**|  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmail**
> sendEmail(iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions)

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final iDOfTheInboxYouWantToSendTheEmailFrom = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 

try { 
    api_instance.sendEmail(iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions);
} catch (e) {
    print('Exception when calling InboxControllerApi->sendEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**String**]()|  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendEmailAndConfirm**
> SentEmailDto sendEmailAndConfirm(iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final iDOfTheInboxYouWantToSendTheEmailFrom = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final sendEmailOptions = SendEmailOptions(); // SendEmailOptions | 

try { 
    final result = api_instance.sendEmailAndConfirm(iDOfTheInboxYouWantToSendTheEmailFrom, sendEmailOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->sendEmailAndConfirm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iDOfTheInboxYouWantToSendTheEmailFrom** | [**String**]()|  | 
 **sendEmailOptions** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **sendTestEmail**
> sendTestEmail(inboxId)

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try { 
    api_instance.sendTestEmail(inboxId);
} catch (e) {
    print('Exception when calling InboxControllerApi->sendTestEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **setInboxFavourited**
> InboxDto setInboxFavourited(inboxId, setInboxFavouritedOptions)

Set inbox favourited state

Set and return new favourite state for an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final setInboxFavouritedOptions = SetInboxFavouritedOptions(); // SetInboxFavouritedOptions | 

try { 
    final result = api_instance.setInboxFavourited(inboxId, setInboxFavouritedOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->setInboxFavourited: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **setInboxFavouritedOptions** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **updateInbox**
> InboxDto updateInbox(inboxId, updateInboxOptions)

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = InboxControllerApi();
final inboxId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final updateInboxOptions = UpdateInboxOptions(); // UpdateInboxOptions | 

try { 
    final result = api_instance.updateInbox(inboxId, updateInboxOptions);
    print(result);
} catch (e) {
    print('Exception when calling InboxControllerApi->updateInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inboxId** | [**String**]()|  | 
 **updateInboxOptions** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

