# mailslurp.api.TrackingControllerApi

## Load the API package
```dart
import 'package:mailslurp/api.dart';
```

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTrackingPixel**](TrackingControllerApi#createtrackingpixel) | **POST** /tracking/pixels | Create tracking pixel
[**getAllTrackingPixels**](TrackingControllerApi#getalltrackingpixels) | **GET** /tracking/pixels | Get tracking pixels
[**getTrackingPixel**](TrackingControllerApi#gettrackingpixel) | **GET** /tracking/pixels/{id} | Get pixel


# **createTrackingPixel**
> TrackingPixelDto createTrackingPixel(createTrackingPixelOptions)

Create tracking pixel

Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TrackingControllerApi();
final createTrackingPixelOptions = CreateTrackingPixelOptions(); // CreateTrackingPixelOptions | createTrackingPixelOptions

try { 
    final result = api_instance.createTrackingPixel(createTrackingPixelOptions);
    print(result);
} catch (e) {
    print('Exception when calling TrackingControllerApi->createTrackingPixel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTrackingPixelOptions** | [**CreateTrackingPixelOptions**](CreateTrackingPixelOptions)| createTrackingPixelOptions | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getAllTrackingPixels**
> PageTrackingPixelProjection getAllTrackingPixels(before, page, searchFilter, since, size, sort)

Get tracking pixels

List tracking pixels in paginated form

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TrackingControllerApi();
final before = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at before the given timestamp
final page = 56; // int | Optional page index in list pagination
final searchFilter = searchFilter_example; // String | Optional search filter
final since = 2013-10-20T19:20:30+01:00; // DateTime | Filter by created at after the given timestamp
final size = 56; // int | Optional page size in list pagination
final sort = sort_example; // String | Optional createdAt sort direction ASC or DESC

try { 
    final result = api_instance.getAllTrackingPixels(before, page, searchFilter, since, size, sort);
    print(result);
} catch (e) {
    print('Exception when calling TrackingControllerApi->getAllTrackingPixels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 
 **page** | **int**| Optional page index in list pagination | [optional] [default to 0]
 **searchFilter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **size** | **int**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to 'ASC']

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

# **getTrackingPixel**
> TrackingPixelDto getTrackingPixel(id)

Get pixel

### Example 
```dart
import 'package:mailslurp/api.dart';
// TODO Configure API key authorization: API_KEY
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('API_KEY').apiKeyPrefix = 'Bearer';

final api_instance = TrackingControllerApi();
final id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | id

try { 
    final result = api_instance.getTrackingPixel(id);
    print(result);
} catch (e) {
    print('Exception when calling TrackingControllerApi->getTrackingPixel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| id | 

### Return type

[**TrackingPixelDto**](TrackingPixelDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

