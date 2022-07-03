//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailValidationRequest {
  /// Returns a new [EmailValidationRequest] instance.
  EmailValidationRequest({
    this.id,
    @required this.userId,
    @required this.emailAddress,
    @required this.isValid,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String emailAddress;

  bool isValid;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailValidationRequest &&
     other.id == id &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.isValid == isValid &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (isValid == null ? 0 : isValid.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'EmailValidationRequest[id=$id, userId=$userId, emailAddress=$emailAddress, isValid=$isValid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'userId'] = userId;
      json[r'emailAddress'] = emailAddress;
      json[r'isValid'] = isValid;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailValidationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmailValidationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : EmailValidationRequest(
        id: json[r'id'],
        userId: json[r'userId'],
        emailAddress: json[r'emailAddress'],
        isValid: json[r'isValid'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<EmailValidationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <EmailValidationRequest>[]
      : json.map((v) => EmailValidationRequest.fromJson(v)).toList(growable: true == growable);

  static Map<String, EmailValidationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, EmailValidationRequest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = EmailValidationRequest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of EmailValidationRequest-objects as value to a dart map
  static Map<String, List<EmailValidationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<EmailValidationRequest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = EmailValidationRequest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

