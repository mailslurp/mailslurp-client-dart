part of mailslurp.api;

class AttachmentMetaData {
  /* Size of attachment in bytes */
  int contentLength = null;
  /* Content type of attachment */
  String contentType = null;
  /* ID of attachment */
  String id = null;
  /* Name of attachment */
  String name = null;
  AttachmentMetaData();

  @override
  String toString() {
    return 'AttachmentMetaData[contentLength=$contentLength, contentType=$contentType, id=$id, name=$name, ]';
  }

  AttachmentMetaData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contentLength = json['contentLength'];
    contentType = json['contentType'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contentLength != null)
      json['contentLength'] = contentLength;
    if (contentType != null)
      json['contentType'] = contentType;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<AttachmentMetaData> listFromJson(List<dynamic> json) {
    return json == null ? List<AttachmentMetaData>() : json.map((value) => AttachmentMetaData.fromJson(value)).toList();
  }

  static Map<String, AttachmentMetaData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AttachmentMetaData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AttachmentMetaData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AttachmentMetaData-objects as value to a dart map
  static Map<String, List<AttachmentMetaData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AttachmentMetaData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AttachmentMetaData.listFromJson(value);
       });
     }
     return map;
  }
}

