part of mailslurp.api;

class UploadAttachmentOptions {
  /* Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. */
  String base64Contents = null;
  /* Optional contentType for file. For instance `application/pdf` */
  String contentType = null;
  /* Optional filename to save upload with */
  String filename = null;
  UploadAttachmentOptions();

  @override
  String toString() {
    return 'UploadAttachmentOptions[base64Contents=$base64Contents, contentType=$contentType, filename=$filename, ]';
  }

  UploadAttachmentOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    base64Contents = json['base64Contents'];
    contentType = json['contentType'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (base64Contents != null)
      json['base64Contents'] = base64Contents;
    if (contentType != null)
      json['contentType'] = contentType;
    if (filename != null)
      json['filename'] = filename;
    return json;
  }

  static List<UploadAttachmentOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<UploadAttachmentOptions>() : json.map((value) => UploadAttachmentOptions.fromJson(value)).toList();
  }

  static Map<String, UploadAttachmentOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UploadAttachmentOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UploadAttachmentOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UploadAttachmentOptions-objects as value to a dart map
  static Map<String, List<UploadAttachmentOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UploadAttachmentOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UploadAttachmentOptions.listFromJson(value);
       });
     }
     return map;
  }
}

