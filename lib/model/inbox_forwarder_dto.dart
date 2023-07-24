//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderDto {
  /// Returns a new [InboxForwarderDto] instance.
  InboxForwarderDto({
    required this.id,
    required this.inboxId,
    this.name,
    required this.field,
    required this.match,
    this.forwardToRecipients = const [],
    required this.createdAt,
  });

  String id;

  String inboxId;

  /// Name of inbox forwarder
  String? name;

  /// Which field to match against
  InboxForwarderDtoFieldEnum field;

  /// Wild-card type pattern to apply to field
  String match;

  /// Who to send forwarded email to
  List<String> forwardToRecipients;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (field.hashCode) +
    (match.hashCode) +
    (forwardToRecipients.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'InboxForwarderDto[id=$id, inboxId=$inboxId, name=$name, field=$field, match=$match, forwardToRecipients=$forwardToRecipients, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'inboxId'] = this.inboxId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'field'] = this.field;
      json[r'match'] = this.match;
      json[r'forwardToRecipients'] = this.forwardToRecipients;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxForwarderDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxForwarderDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxForwarderDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxForwarderDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxForwarderDto(
        id: mapValueOfType<String>(json, r'id')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        name: mapValueOfType<String>(json, r'name'),
        field: InboxForwarderDtoFieldEnum.fromJson(json[r'field'])!,
        match: mapValueOfType<String>(json, r'match')!,
        forwardToRecipients: json[r'forwardToRecipients'] is List
            ? (json[r'forwardToRecipients'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<InboxForwarderDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxForwarderDto> mapFromJson(dynamic json) {
    final map = <String, InboxForwarderDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderDto-objects as value to a dart map
  static Map<String, List<InboxForwarderDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxForwarderDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxForwarderDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'inboxId',
    'field',
    'match',
    'forwardToRecipients',
    'createdAt',
  };
}

/// Which field to match against
class InboxForwarderDtoFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderDtoFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = InboxForwarderDtoFieldEnum._(r'RECIPIENTS');
  static const SENDER = InboxForwarderDtoFieldEnum._(r'SENDER');
  static const SUBJECT = InboxForwarderDtoFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = InboxForwarderDtoFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][InboxForwarderDtoFieldEnum].
  static const values = <InboxForwarderDtoFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static InboxForwarderDtoFieldEnum? fromJson(dynamic value) => InboxForwarderDtoFieldEnumTypeTransformer().decode(value);

  static List<InboxForwarderDtoFieldEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderDtoFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderDtoFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxForwarderDtoFieldEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderDtoFieldEnum].
class InboxForwarderDtoFieldEnumTypeTransformer {
  factory InboxForwarderDtoFieldEnumTypeTransformer() => _instance ??= const InboxForwarderDtoFieldEnumTypeTransformer._();

  const InboxForwarderDtoFieldEnumTypeTransformer._();

  String encode(InboxForwarderDtoFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderDtoFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderDtoFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return InboxForwarderDtoFieldEnum.RECIPIENTS;
        case r'SENDER': return InboxForwarderDtoFieldEnum.SENDER;
        case r'SUBJECT': return InboxForwarderDtoFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return InboxForwarderDtoFieldEnum.ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxForwarderDtoFieldEnumTypeTransformer] instance.
  static InboxForwarderDtoFieldEnumTypeTransformer? _instance;
}


