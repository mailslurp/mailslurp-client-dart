//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDomainOptions {
  /// Returns a new [CreateDomainOptions] instance.
  CreateDomainOptions({
    this.createdCatchAllInbox,
    this.description,
    this.domain,
  });

  /// Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
  bool createdCatchAllInbox;

  /// Optional description of the domain.
  String description;

  /// The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
  String domain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDomainOptions &&
     other.createdCatchAllInbox == createdCatchAllInbox &&
     other.description == description &&
     other.domain == domain;

  @override
  int get hashCode =>
    (createdCatchAllInbox == null ? 0 : createdCatchAllInbox.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (domain == null ? 0 : domain.hashCode);

  @override
  String toString() => 'CreateDomainOptions[createdCatchAllInbox=$createdCatchAllInbox, description=$description, domain=$domain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdCatchAllInbox != null) {
      json[r'createdCatchAllInbox'] = createdCatchAllInbox;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    return json;
  }

  /// Returns a new [CreateDomainOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateDomainOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateDomainOptions(
        createdCatchAllInbox: json[r'createdCatchAllInbox'],
        description: json[r'description'],
        domain: json[r'domain'],
    );

  static List<CreateDomainOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateDomainOptions>[]
      : json.map((v) => CreateDomainOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateDomainOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateDomainOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateDomainOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateDomainOptions-objects as value to a dart map
  static Map<String, List<CreateDomainOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateDomainOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateDomainOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

