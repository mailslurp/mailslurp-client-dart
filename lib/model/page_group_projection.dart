part of mailslurp.api;

class PageGroupProjection {
  
  List<GroupProjection> content = [];
  
  bool empty = null;
  
  bool first = null;
  
  bool last = null;
  
  int number = null;
  
  int numberOfElements = null;
  
  Pageable pageable = null;
  
  int size = null;
  
  Sort sort = null;
  
  int totalElements = null;
  
  int totalPages = null;
  PageGroupProjection();

  @override
  String toString() {
    return 'PageGroupProjection[content=$content, empty=$empty, first=$first, last=$last, number=$number, numberOfElements=$numberOfElements, pageable=$pageable, size=$size, sort=$sort, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

  PageGroupProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = (json['content'] == null) ?
      null :
      GroupProjection.listFromJson(json['content']);
    empty = json['empty'];
    first = json['first'];
    last = json['last'];
    number = json['number'];
    numberOfElements = json['numberOfElements'];
    pageable = (json['pageable'] == null) ?
      null :
      Pageable.fromJson(json['pageable']);
    size = json['size'];
    sort = (json['sort'] == null) ?
      null :
      Sort.fromJson(json['sort']);
    totalElements = json['totalElements'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (content != null)
      json['content'] = content;
    if (empty != null)
      json['empty'] = empty;
    if (first != null)
      json['first'] = first;
    if (last != null)
      json['last'] = last;
    if (number != null)
      json['number'] = number;
    if (numberOfElements != null)
      json['numberOfElements'] = numberOfElements;
    if (pageable != null)
      json['pageable'] = pageable;
    if (size != null)
      json['size'] = size;
    if (sort != null)
      json['sort'] = sort;
    if (totalElements != null)
      json['totalElements'] = totalElements;
    if (totalPages != null)
      json['totalPages'] = totalPages;
    return json;
  }

  static List<PageGroupProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<PageGroupProjection>() : json.map((value) => PageGroupProjection.fromJson(value)).toList();
  }

  static Map<String, PageGroupProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PageGroupProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PageGroupProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PageGroupProjection-objects as value to a dart map
  static Map<String, List<PageGroupProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PageGroupProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PageGroupProjection.listFromJson(value);
       });
     }
     return map;
  }
}

