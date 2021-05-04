//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FormControllerApi {
  FormControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Submit a form to be parsed and sent as an email to an address determined by the form fields
  ///
  /// This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress:
  ///   Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later.
  ///
  /// * [String] redirectTo:
  ///   Optional URL to redirect form submitter to after submission. If not present user will see a success message.
  ///
  /// * [String] spamCheck:
  ///   Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored.
  ///
  /// * [String] subject:
  ///   Optional subject of the email that will be sent.
  ///
  /// * [String] successMessage:
  ///   Optional success message to display if no _redirectTo present.
  ///
  /// * [String] to:
  ///   The email address that submitted form should be sent to.
  ///
  /// * [String] otherParameters:
  ///   All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent.
  Future<Response> submitFormWithHttpInfo({ String emailAddress, String redirectTo, String spamCheck, String subject, String successMessage, String to, String otherParameters }) async {
    // Verify required params are set.

    final path = r'/forms';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['multipart/form-data', 'application/x-www-form-urlencoded'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (emailAddress != null) {
        hasFields = true;
        mp.fields[r'_emailAddress'] = parameterToString(emailAddress);
      }
      if (redirectTo != null) {
        hasFields = true;
        mp.fields[r'_redirectTo'] = parameterToString(redirectTo);
      }
      if (spamCheck != null) {
        hasFields = true;
        mp.fields[r'_spamCheck'] = parameterToString(spamCheck);
      }
      if (subject != null) {
        hasFields = true;
        mp.fields[r'_subject'] = parameterToString(subject);
      }
      if (successMessage != null) {
        hasFields = true;
        mp.fields[r'_successMessage'] = parameterToString(successMessage);
      }
      if (to != null) {
        hasFields = true;
        mp.fields[r'_to'] = parameterToString(to);
      }
      if (otherParameters != null) {
        hasFields = true;
        mp.fields[r'otherParameters'] = parameterToString(otherParameters);
      }
      if (hasFields) {
        postBody = mp;
      }
    } else {
      if (emailAddress != null) {
        formParams[r'_emailAddress'] = parameterToString(emailAddress);
      }
      if (redirectTo != null) {
        formParams[r'_redirectTo'] = parameterToString(redirectTo);
      }
      if (spamCheck != null) {
        formParams[r'_spamCheck'] = parameterToString(spamCheck);
      }
      if (subject != null) {
        formParams[r'_subject'] = parameterToString(subject);
      }
      if (successMessage != null) {
        formParams[r'_successMessage'] = parameterToString(successMessage);
      }
      if (to != null) {
        formParams[r'_to'] = parameterToString(to);
      }
      if (otherParameters != null) {
        formParams[r'otherParameters'] = parameterToString(otherParameters);
      }
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Submit a form to be parsed and sent as an email to an address determined by the form fields
  ///
  /// This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress:
  ///   Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later.
  ///
  /// * [String] redirectTo:
  ///   Optional URL to redirect form submitter to after submission. If not present user will see a success message.
  ///
  /// * [String] spamCheck:
  ///   Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored.
  ///
  /// * [String] subject:
  ///   Optional subject of the email that will be sent.
  ///
  /// * [String] successMessage:
  ///   Optional success message to display if no _redirectTo present.
  ///
  /// * [String] to:
  ///   The email address that submitted form should be sent to.
  ///
  /// * [String] otherParameters:
  ///   All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent.
  Future<String> submitForm({ String emailAddress, String redirectTo, String spamCheck, String subject, String successMessage, String to, String otherParameters }) async {
    final response = await submitFormWithHttpInfo( emailAddress: emailAddress, redirectTo: redirectTo, spamCheck: spamCheck, subject: subject, successMessage: successMessage, to: to, otherParameters: otherParameters );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
        }
    return Future<String>.value(null);
  }
}
