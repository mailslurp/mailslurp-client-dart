//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiSendingConnectionControllerApi {
  ApiSendingConnectionControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a sending connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateSendingConnectionOptions] createSendingConnectionOptions (required):
  Future<Response> createSendingConnectionWithHttpInfo(CreateSendingConnectionOptions createSendingConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections';

    // ignore: prefer_final_locals
    Object? postBody = createSendingConnectionOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a sending connection
  ///
  /// Parameters:
  ///
  /// * [CreateSendingConnectionOptions] createSendingConnectionOptions (required):
  Future<SendingConnectionDto?> createSendingConnection(CreateSendingConnectionOptions createSendingConnectionOptions,) async {
    final response = await createSendingConnectionWithHttpInfo(createSendingConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// Cancel purchased Delivery Sender seats
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteDeliverySenderSeatsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/sender-seats';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Cancel purchased Delivery Sender seats
  Future<DeliverySenderCapacityDto?> deleteDeliverySenderSeats() async {
    final response = await deleteDeliverySenderSeatsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverySenderCapacityDto',) as DeliverySenderCapacityDto;
    
    }
    return null;
  }

  /// Disconnect a sending connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> deleteSendingConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Disconnect a sending connection
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<void> deleteSendingConnection(String connectionId,) async {
    final response = await deleteSendingConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disable Delivery Sender capacity
  ///
  /// Releases this connection's shared sender allocation while retaining its verified credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> disableSendingConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}/enable'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Disable Delivery Sender capacity
  ///
  /// Releases this connection's shared sender allocation while retaining its verified credentials.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<SendingConnectionDto?> disableSendingConnection(String connectionId,) async {
    final response = await disableSendingConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// Enable a verified Delivery Sender
  ///
  /// Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> enableSendingConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}/enable'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Enable a verified Delivery Sender
  ///
  /// Allocates shared sender capacity. Included capacity is used first and supported additional capacity is added to the existing subscription when possible.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<SendingConnectionDto?> enableSendingConnection(String connectionId,) async {
    final response = await enableSendingConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// Get shared Delivery Sender capacity
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeliverySenderCapacityWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/capacity';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get shared Delivery Sender capacity
  Future<DeliverySenderCapacityDto?> getDeliverySenderCapacity() async {
    final response = await getDeliverySenderCapacityWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverySenderCapacityDto',) as DeliverySenderCapacityDto;
    
    }
    return null;
  }

  /// Get a sending connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> getSendingConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a sending connection
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<SendingConnectionDto?> getSendingConnection(String connectionId,) async {
    final response = await getSendingConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// List sending connection providers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSendingConnectionProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/providers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List sending connection providers
  Future<List<SendingConnectionProviderDto>?> getSendingConnectionProviders() async {
    final response = await getSendingConnectionProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SendingConnectionProviderDto>') as List)
        .cast<SendingConnectionProviderDto>()
        .toList();

    }
    return null;
  }

  /// List sending connections
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSendingConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List sending connections
  Future<List<SendingConnectionDto>?> getSendingConnections() async {
    final response = await getSendingConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SendingConnectionDto>') as List)
        .cast<SendingConnectionDto>()
        .toList();

    }
    return null;
  }

  /// Send an unbilled delivery test to a temporary MailSlurp inbox
  ///
  /// Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> probeSendingConnectionDeliveryWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}/delivery-probe'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Send an unbilled delivery test to a temporary MailSlurp inbox
  ///
  /// Uses only the selected customer-owned connection. A successful receipt proves provider acceptance and delivery to MailSlurp, not Gmail or Outlook placement.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<SendingConnectionDeliveryProbeDto?> probeSendingConnectionDelivery(String connectionId,) async {
    final response = await probeSendingConnectionDeliveryWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDeliveryProbeDto',) as SendingConnectionDeliveryProbeDto;
    
    }
    return null;
  }

  /// Rotate sending connection credentials
  ///
  /// Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [RotateSendingConnectionCredentialsOptions] rotateSendingConnectionCredentialsOptions (required):
  Future<Response> rotateSendingConnectionCredentialsWithHttpInfo(String connectionId, RotateSendingConnectionCredentialsOptions rotateSendingConnectionCredentialsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}/credentials'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody = rotateSendingConnectionCredentialsOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rotate sending connection credentials
  ///
  /// Verifies supported replacement credentials before atomically replacing the encrypted credential envelope.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [RotateSendingConnectionCredentialsOptions] rotateSendingConnectionCredentialsOptions (required):
  Future<SendingConnectionDto?> rotateSendingConnectionCredentials(String connectionId, RotateSendingConnectionCredentialsOptions rotateSendingConnectionCredentialsOptions,) async {
    final response = await rotateSendingConnectionCredentialsWithHttpInfo(connectionId, rotateSendingConnectionCredentialsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// Update purchased Delivery Sender seats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateDeliverySenderSeatsOptions] updateDeliverySenderSeatsOptions (required):
  Future<Response> updateDeliverySenderSeatsWithHttpInfo(UpdateDeliverySenderSeatsOptions updateDeliverySenderSeatsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/sender-seats';

    // ignore: prefer_final_locals
    Object? postBody = updateDeliverySenderSeatsOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update purchased Delivery Sender seats
  ///
  /// Parameters:
  ///
  /// * [UpdateDeliverySenderSeatsOptions] updateDeliverySenderSeatsOptions (required):
  Future<DeliverySenderCapacityDto?> updateDeliverySenderSeats(UpdateDeliverySenderSeatsOptions updateDeliverySenderSeatsOptions,) async {
    final response = await updateDeliverySenderSeatsWithHttpInfo(updateDeliverySenderSeatsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverySenderCapacityDto',) as DeliverySenderCapacityDto;
    
    }
    return null;
  }

  /// Update a sending connection
  ///
  /// Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [UpdateSendingConnectionOptions] updateSendingConnectionOptions (required):
  Future<Response> updateSendingConnectionWithHttpInfo(String connectionId, UpdateSendingConnectionOptions updateSendingConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody = updateSendingConnectionOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a sending connection
  ///
  /// Updates non-secret connection metadata. Use the credentials endpoint to replace supported SMTP or API-key credentials.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [UpdateSendingConnectionOptions] updateSendingConnectionOptions (required):
  Future<SendingConnectionDto?> updateSendingConnection(String connectionId, UpdateSendingConnectionOptions updateSendingConnectionOptions,) async {
    final response = await updateSendingConnectionWithHttpInfo(connectionId, updateSendingConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }

  /// Verify a sending connection
  ///
  /// Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> verifySendingConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sending-connections/{connectionId}/verify'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Verify a sending connection
  ///
  /// Verifies the customer credential without enabling billable sender capacity. A consuming product enables the shared Delivery Sender seat when sending starts.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<SendingConnectionDto?> verifySendingConnection(String connectionId,) async {
    final response = await verifySendingConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendingConnectionDto',) as SendingConnectionDto;
    
    }
    return null;
  }
}
