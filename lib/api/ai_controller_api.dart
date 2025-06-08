//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AIControllerApi {
  AIControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List transformers
  ///
  /// List all AI transforms
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AITranformCreateOptions] options (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> createTransformerWithHttpInfo(AITranformCreateOptions options, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
      queryParams.addAll(_queryParams('', 'options', options));

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

  /// List transformers
  ///
  /// List all AI transforms
  ///
  /// Parameters:
  ///
  /// * [AITranformCreateOptions] options (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageAITransformProjection?> createTransformer(AITranformCreateOptions options, { int? page, int? size, String? sort, }) async {
    final response = await createTransformerWithHttpInfo(options,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAITransformProjection',) as PageAITransformProjection;
    
    }
    return null;
  }

  /// Create a transformer for reuse in automations
  ///
  /// Save an AI transform instructions and schema for use with webhooks and automations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AITranformCreateOptions] aITranformCreateOptions (required):
  Future<Response> createTransformer1WithHttpInfo(AITranformCreateOptions aITranformCreateOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer';

    // ignore: prefer_final_locals
    Object? postBody = aITranformCreateOptions;

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

  /// Create a transformer for reuse in automations
  ///
  /// Save an AI transform instructions and schema for use with webhooks and automations
  ///
  /// Parameters:
  ///
  /// * [AITranformCreateOptions] aITranformCreateOptions (required):
  Future<AITransformDto?> createTransformer1(AITranformCreateOptions aITranformCreateOptions,) async {
    final response = await createTransformer1WithHttpInfo(aITranformCreateOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AITransformDto',) as AITransformDto;
    
    }
    return null;
  }

  /// Create transformer mapping
  ///
  /// Create AI transformer mappings to other entities
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAITransformerMappingOptions] createAITransformerMappingOptions (required):
  Future<Response> createTransformerMappingsWithHttpInfo(CreateAITransformerMappingOptions createAITransformerMappingOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/mappings';

    // ignore: prefer_final_locals
    Object? postBody = createAITransformerMappingOptions;

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

  /// Create transformer mapping
  ///
  /// Create AI transformer mappings to other entities
  ///
  /// Parameters:
  ///
  /// * [CreateAITransformerMappingOptions] createAITransformerMappingOptions (required):
  Future<AITransformMappingDto?> createTransformerMappings(CreateAITransformerMappingOptions createAITransformerMappingOptions,) async {
    final response = await createTransformerMappingsWithHttpInfo(createAITransformerMappingOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AITransformMappingDto',) as AITransformMappingDto;
    
    }
    return null;
  }

  /// Delete a transformer
  ///
  /// Delete an AI transformer and schemas by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteTransformerWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/{id}'
      .replaceAll('{id}', id);

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

  /// Delete a transformer
  ///
  /// Delete an AI transformer and schemas by ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteTransformer(String id,) async {
    final response = await deleteTransformerWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete transformer mapping
  ///
  /// Delete an AI transformer mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform mapping
  Future<Response> deleteTransformerMappingWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/mappings/{id}'
      .replaceAll('{id}', id);

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

  /// Delete transformer mapping
  ///
  /// Delete an AI transformer mapping
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform mapping
  Future<void> deleteTransformerMapping(String id,) async {
    final response = await deleteTransformerMappingWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all transformers
  ///
  /// Delete all AI transformers and schemas
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteTransformersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer';

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

  /// Delete all transformers
  ///
  /// Delete all AI transformers and schemas
  Future<void> deleteTransformers() async {
    final response = await deleteTransformersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Generate structured content for an attachment
  ///
  /// Use output schemas to extract data from an attachment using AI
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentAttachmentOptions] generateStructuredContentAttachmentOptions (required):
  Future<Response> generateStructuredContentFromAttachmentWithHttpInfo(GenerateStructuredContentAttachmentOptions generateStructuredContentAttachmentOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/structured-content/attachment';

    // ignore: prefer_final_locals
    Object? postBody = generateStructuredContentAttachmentOptions;

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

  /// Generate structured content for an attachment
  ///
  /// Use output schemas to extract data from an attachment using AI
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentAttachmentOptions] generateStructuredContentAttachmentOptions (required):
  Future<StructuredContentResultDto?> generateStructuredContentFromAttachment(GenerateStructuredContentAttachmentOptions generateStructuredContentAttachmentOptions,) async {
    final response = await generateStructuredContentFromAttachmentWithHttpInfo(generateStructuredContentAttachmentOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StructuredContentResultDto',) as StructuredContentResultDto;
    
    }
    return null;
  }

  /// Generate structured content for an email
  ///
  /// Use output schemas to extract data from an email using AI
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentEmailOptions] generateStructuredContentEmailOptions (required):
  Future<Response> generateStructuredContentFromEmailWithHttpInfo(GenerateStructuredContentEmailOptions generateStructuredContentEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/structured-content/email';

    // ignore: prefer_final_locals
    Object? postBody = generateStructuredContentEmailOptions;

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

  /// Generate structured content for an email
  ///
  /// Use output schemas to extract data from an email using AI
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentEmailOptions] generateStructuredContentEmailOptions (required):
  Future<StructuredContentResultDto?> generateStructuredContentFromEmail(GenerateStructuredContentEmailOptions generateStructuredContentEmailOptions,) async {
    final response = await generateStructuredContentFromEmailWithHttpInfo(generateStructuredContentEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StructuredContentResultDto',) as StructuredContentResultDto;
    
    }
    return null;
  }

  /// Generate structured content for a TXT message
  ///
  /// Use output schemas to extract data from an SMS using AI
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentSmsOptions] generateStructuredContentSmsOptions (required):
  Future<Response> generateStructuredContentFromSmsWithHttpInfo(GenerateStructuredContentSmsOptions generateStructuredContentSmsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/structured-content/sms';

    // ignore: prefer_final_locals
    Object? postBody = generateStructuredContentSmsOptions;

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

  /// Generate structured content for a TXT message
  ///
  /// Use output schemas to extract data from an SMS using AI
  ///
  /// Parameters:
  ///
  /// * [GenerateStructuredContentSmsOptions] generateStructuredContentSmsOptions (required):
  Future<StructuredContentResultDto?> generateStructuredContentFromSms(GenerateStructuredContentSmsOptions generateStructuredContentSmsOptions,) async {
    final response = await generateStructuredContentFromSmsWithHttpInfo(generateStructuredContentSmsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StructuredContentResultDto',) as StructuredContentResultDto;
    
    }
    return null;
  }

  /// Get a transformer
  ///
  /// Get AI transformer and schemas by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getTransformerWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/{id}'
      .replaceAll('{id}', id);

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

  /// Get a transformer
  ///
  /// Get AI transformer and schemas by ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AITransformDto?> getTransformer(String id,) async {
    final response = await getTransformerWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AITransformDto',) as AITransformDto;
    
    }
    return null;
  }

  /// Get transformer mapping
  ///
  /// Get an AI transformer mapping
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform mapping
  Future<Response> getTransformerMappingWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/mappings/{id}'
      .replaceAll('{id}', id);

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

  /// Get transformer mapping
  ///
  /// Get an AI transformer mapping
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform mapping
  Future<AITransformMappingDto?> getTransformerMapping(String id,) async {
    final response = await getTransformerMappingWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AITransformMappingDto',) as AITransformMappingDto;
    
    }
    return null;
  }

  /// Get transformer mappings
  ///
  /// Get AI transformer mappings to other entities
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aiTransformId:
  ///
  /// * [String] entityId:
  ///
  /// * [String] entityType:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getTransformerMappingsWithHttpInfo({ String? aiTransformId, String? entityId, String? entityType, int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/mappings';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (aiTransformId != null) {
      queryParams.addAll(_queryParams('', 'aiTransformId', aiTransformId));
    }
    if (entityId != null) {
      queryParams.addAll(_queryParams('', 'entityId', entityId));
    }
    if (entityType != null) {
      queryParams.addAll(_queryParams('', 'entityType', entityType));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

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

  /// Get transformer mappings
  ///
  /// Get AI transformer mappings to other entities
  ///
  /// Parameters:
  ///
  /// * [String] aiTransformId:
  ///
  /// * [String] entityId:
  ///
  /// * [String] entityType:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageAITransformMappingProjection?> getTransformerMappings({ String? aiTransformId, String? entityId, String? entityType, int? page, int? size, String? sort, }) async {
    final response = await getTransformerMappingsWithHttpInfo( aiTransformId: aiTransformId, entityId: entityId, entityType: entityType, page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAITransformMappingProjection',) as PageAITransformMappingProjection;
    
    }
    return null;
  }

  /// Get transformer result
  ///
  /// Get AI transformer result
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform result
  Future<Response> getTransformerResultWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/results/{id}'
      .replaceAll('{id}', id);

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

  /// Get transformer result
  ///
  /// Get AI transformer result
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of transform result
  Future<AITransformResultDto?> getTransformerResult(String id,) async {
    final response = await getTransformerResultWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AITransformResultDto',) as AITransformResultDto;
    
    }
    return null;
  }

  /// Get transformer results
  ///
  /// Get AI transformer results
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aiTransformId:
  ///
  /// * [String] aiTransformMappingId:
  ///
  /// * [String] entityId:
  ///
  /// * [String] entityType:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getTransformerResultsWithHttpInfo({ String? aiTransformId, String? aiTransformMappingId, String? entityId, String? entityType, int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/transformer/results';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (aiTransformId != null) {
      queryParams.addAll(_queryParams('', 'aiTransformId', aiTransformId));
    }
    if (aiTransformMappingId != null) {
      queryParams.addAll(_queryParams('', 'aiTransformMappingId', aiTransformMappingId));
    }
    if (entityId != null) {
      queryParams.addAll(_queryParams('', 'entityId', entityId));
    }
    if (entityType != null) {
      queryParams.addAll(_queryParams('', 'entityType', entityType));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

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

  /// Get transformer results
  ///
  /// Get AI transformer results
  ///
  /// Parameters:
  ///
  /// * [String] aiTransformId:
  ///
  /// * [String] aiTransformMappingId:
  ///
  /// * [String] entityId:
  ///
  /// * [String] entityType:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///   Optional page size. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageAITransformResultProjection?> getTransformerResults({ String? aiTransformId, String? aiTransformMappingId, String? entityId, String? entityType, int? page, int? size, String? sort, }) async {
    final response = await getTransformerResultsWithHttpInfo( aiTransformId: aiTransformId, aiTransformMappingId: aiTransformMappingId, entityId: entityId, entityType: entityType, page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAITransformResultProjection',) as PageAITransformResultProjection;
    
    }
    return null;
  }

  /// Validate structured content schema
  ///
  /// Check if a schema is valid and can be used to extract data using AI
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StructuredOutputSchema] structuredOutputSchema (required):
  Future<Response> validateStructuredOutputSchemaWithHttpInfo(StructuredOutputSchema structuredOutputSchema,) async {
    // ignore: prefer_const_declarations
    final path = r'/ai/structured-content/validate';

    // ignore: prefer_final_locals
    Object? postBody = structuredOutputSchema;

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

  /// Validate structured content schema
  ///
  /// Check if a schema is valid and can be used to extract data using AI
  ///
  /// Parameters:
  ///
  /// * [StructuredOutputSchema] structuredOutputSchema (required):
  Future<StructuredOutputSchemaValidation?> validateStructuredOutputSchema(StructuredOutputSchema structuredOutputSchema,) async {
    final response = await validateStructuredOutputSchemaWithHttpInfo(structuredOutputSchema,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StructuredOutputSchemaValidation',) as StructuredOutputSchemaValidation;
    
    }
    return null;
  }
}
