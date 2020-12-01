part of mailslurp.api;

class DownloadAttachmentDto {
  /* Base64 encoded string of attachment bytes. Decode the base64 string to get the raw file bytes */
  String base64FileContents = null;
  /* Content type of attachment */
  String contentType = null;
  /* Size in bytes of attachment */
  int sizeBytes = null;
  DownloadAttachmentDto();

  @override
  String toString() {
    return 'DownloadAttachmentDto[base64FileContents=$base64FileContents, contentType=$contentType, sizeBytes=$sizeBytes, ]';
  }

  DownloadAttachmentDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    base64FileContents = json['base64FileContents'];
    contentType = json['contentType'];
    sizeBytes = json['sizeBytes'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (base64FileContents != null)
      json['base64FileContents'] = base64FileContents;
    if (contentType != null)
      json['contentType'] = contentType;
    if (sizeBytes != null)
      json['sizeBytes'] = sizeBytes;
    return json;
  }

  static List<DownloadAttachmentDto> listFromJson(List<dynamic> json) {
    return json == null ? List<DownloadAttachmentDto>() : json.map((value) => DownloadAttachmentDto.fromJson(value)).toList();
  }

  static Map<String, DownloadAttachmentDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DownloadAttachmentDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DownloadAttachmentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DownloadAttachmentDto-objects as value to a dart map
  static Map<String, List<DownloadAttachmentDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DownloadAttachmentDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DownloadAttachmentDto.listFromJson(value);
       });
     }
     return map;
  }
}

