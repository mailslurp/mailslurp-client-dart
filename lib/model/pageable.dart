part of mailslurp.api;

class Pageable {
  
  int offset = null;
  
  int pageNumber = null;
  
  int pageSize = null;
  
  bool paged = null;
  
  Sort sort = null;
  
  bool unpaged = null;
  Pageable();

  @override
  String toString() {
    return 'Pageable[offset=$offset, pageNumber=$pageNumber, pageSize=$pageSize, paged=$paged, sort=$sort, unpaged=$unpaged, ]';
  }

  Pageable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset = json['offset'];
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    paged = json['paged'];
    sort = (json['sort'] == null) ?
      null :
      Sort.fromJson(json['sort']);
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (offset != null)
      json['offset'] = offset;
    if (pageNumber != null)
      json['pageNumber'] = pageNumber;
    if (pageSize != null)
      json['pageSize'] = pageSize;
    if (paged != null)
      json['paged'] = paged;
    if (sort != null)
      json['sort'] = sort;
    if (unpaged != null)
      json['unpaged'] = unpaged;
    return json;
  }

  static List<Pageable> listFromJson(List<dynamic> json) {
    return json == null ? List<Pageable>() : json.map((value) => Pageable.fromJson(value)).toList();
  }

  static Map<String, Pageable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Pageable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Pageable.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pageable-objects as value to a dart map
  static Map<String, List<Pageable>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Pageable>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Pageable.listFromJson(value);
       });
     }
     return map;
  }
}

