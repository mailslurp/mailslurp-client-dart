part of mailslurp.api;

class PageTemplateProjection {
  
  List<TemplateProjection> content = [];
  
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
  PageTemplateProjection();

  @override
  String toString() {
    return 'PageTemplateProjection[content=$content, empty=$empty, first=$first, last=$last, number=$number, numberOfElements=$numberOfElements, pageable=$pageable, size=$size, sort=$sort, totalElements=$totalElements, totalPages=$totalPages, ]';
  }

  PageTemplateProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    content = (json['content'] == null) ?
      null :
      TemplateProjection.listFromJson(json['content']);
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

  static List<PageTemplateProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<PageTemplateProjection>() : json.map((value) => PageTemplateProjection.fromJson(value)).toList();
  }

  static Map<String, PageTemplateProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PageTemplateProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PageTemplateProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PageTemplateProjection-objects as value to a dart map
  static Map<String, List<PageTemplateProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PageTemplateProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PageTemplateProjection.listFromJson(value);
       });
     }
     return map;
  }
}

