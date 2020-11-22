part of mailslurp.api;



class FormControllerApi {
  final ApiClient apiClient;

  FormControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Submit a form to be parsed and sent as an email to an address determined by the form fields with HTTP info returned
  ///
  /// This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a &#x60;_to&#x60; email address or a &#x60;_toAlias&#x60; email alias ID to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding &#x60;name&#x60; attributes or as URL query parameters such as &#x60;?_to&#x3D;test@example.com&#x60;  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts &#x60;application/x-www-form-urlencoded&#x60;, and &#x60;multipart/form-data&#x60; content-types.  #### HTML Example &#x60;&#x60;&#x60;html &lt;form    action&#x3D;\&quot;https://api.mailslurp.com/forms\&quot;   method&#x3D;\&quot;post\&quot; &gt;   &lt;input name&#x3D;\&quot;_to\&quot; type&#x3D;\&quot;hidden\&quot; value&#x3D;\&quot;test@example.com\&quot;/&gt;   &lt;textarea name&#x3D;\&quot;feedback\&quot;&gt;&lt;/textarea&gt;   &lt;button type&#x3D;\&quot;submit\&quot;&gt;Submit&lt;/button&gt; &lt;/form&gt; &#x60;&#x60;&#x60;  #### URL Example &#x60;&#x60;&#x60;html &lt;form    action&#x3D;\&quot;https://api.mailslurp.com/forms?_toAlias&#x3D;test@example.com\&quot;   method&#x3D;\&quot;post\&quot; &gt;   &lt;textarea name&#x3D;\&quot;feedback\&quot;&gt;&lt;/textarea&gt;   &lt;button type&#x3D;\&quot;submit\&quot;&gt;Submit&lt;/button&gt; &lt;/form&gt; &#x60;&#x60;&#x60;    The email address is specified by a &#x60;_to&#x60; field OR is extracted from an email alias specified by a &#x60;_toAlias&#x60; field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the &#x60;enctype&#x60; attribute, for instance: &#x60;&lt;form enctype&#x3D;\&quot;multipart/form-data\&quot;&gt;&#x60;.  
  Future<Response> submitFormWithHttpInfo({ String emailAddress, String redirectTo, String spamCheck, String subject, String successMessage, String to, String toAlias, String otherParameters }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/forms".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["multipart/form-data","application/x-www-form-urlencoded"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (emailAddress != null) {
        hasFields = true;
        mp.fields['_emailAddress'] = parameterToString(emailAddress);
      }
      if (redirectTo != null) {
        hasFields = true;
        mp.fields['_redirectTo'] = parameterToString(redirectTo);
      }
      if (spamCheck != null) {
        hasFields = true;
        mp.fields['_spamCheck'] = parameterToString(spamCheck);
      }
      if (subject != null) {
        hasFields = true;
        mp.fields['_subject'] = parameterToString(subject);
      }
      if (successMessage != null) {
        hasFields = true;
        mp.fields['_successMessage'] = parameterToString(successMessage);
      }
      if (to != null) {
        hasFields = true;
        mp.fields['_to'] = parameterToString(to);
      }
      if (toAlias != null) {
        hasFields = true;
        mp.fields['_toAlias'] = parameterToString(toAlias);
      }
      if (otherParameters != null) {
        hasFields = true;
        mp.fields['otherParameters'] = parameterToString(otherParameters);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (emailAddress != null)
        formParams['_emailAddress'] = parameterToString(emailAddress);
      if (redirectTo != null)
        formParams['_redirectTo'] = parameterToString(redirectTo);
      if (spamCheck != null)
        formParams['_spamCheck'] = parameterToString(spamCheck);
      if (subject != null)
        formParams['_subject'] = parameterToString(subject);
      if (successMessage != null)
        formParams['_successMessage'] = parameterToString(successMessage);
      if (to != null)
        formParams['_to'] = parameterToString(to);
      if (toAlias != null)
        formParams['_toAlias'] = parameterToString(toAlias);
      if (otherParameters != null)
        formParams['otherParameters'] = parameterToString(otherParameters);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Submit a form to be parsed and sent as an email to an address determined by the form fields
  ///
  /// This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a &#x60;_to&#x60; email address or a &#x60;_toAlias&#x60; email alias ID to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding &#x60;name&#x60; attributes or as URL query parameters such as &#x60;?_to&#x3D;test@example.com&#x60;  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts &#x60;application/x-www-form-urlencoded&#x60;, and &#x60;multipart/form-data&#x60; content-types.  #### HTML Example &#x60;&#x60;&#x60;html &lt;form    action&#x3D;\&quot;https://api.mailslurp.com/forms\&quot;   method&#x3D;\&quot;post\&quot; &gt;   &lt;input name&#x3D;\&quot;_to\&quot; type&#x3D;\&quot;hidden\&quot; value&#x3D;\&quot;test@example.com\&quot;/&gt;   &lt;textarea name&#x3D;\&quot;feedback\&quot;&gt;&lt;/textarea&gt;   &lt;button type&#x3D;\&quot;submit\&quot;&gt;Submit&lt;/button&gt; &lt;/form&gt; &#x60;&#x60;&#x60;  #### URL Example &#x60;&#x60;&#x60;html &lt;form    action&#x3D;\&quot;https://api.mailslurp.com/forms?_toAlias&#x3D;test@example.com\&quot;   method&#x3D;\&quot;post\&quot; &gt;   &lt;textarea name&#x3D;\&quot;feedback\&quot;&gt;&lt;/textarea&gt;   &lt;button type&#x3D;\&quot;submit\&quot;&gt;Submit&lt;/button&gt; &lt;/form&gt; &#x60;&#x60;&#x60;    The email address is specified by a &#x60;_to&#x60; field OR is extracted from an email alias specified by a &#x60;_toAlias&#x60; field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the &#x60;enctype&#x60; attribute, for instance: &#x60;&lt;form enctype&#x3D;\&quot;multipart/form-data\&quot;&gt;&#x60;.  
  Future<String> submitForm({ String emailAddress, String redirectTo, String spamCheck, String subject, String successMessage, String to, String toAlias, String otherParameters }) async {
    Response response = await submitFormWithHttpInfo( emailAddress: emailAddress, redirectTo: redirectTo, spamCheck: spamCheck, subject: subject, successMessage: successMessage, to: to, toAlias: toAlias, otherParameters: otherParameters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

}
