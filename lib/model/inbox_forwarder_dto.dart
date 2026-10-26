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
    this.inboxId,
    this.name,
    this.field,
    this.match,
    this.forwardToRecipients = const [],
    required this.createdAt,
    this.should,
    this.matchOptions,
    this.attachmentTextExtractionMethod,
  });

  String id;

  String? inboxId;

  /// Name of inbox forwarder
  String? name;

  /// Which field to match against
  InboxForwarderDtoFieldEnum? field;

  /// Pattern to apply to field
  String? match;

  /// Who to send forwarded email to
  List<String> forwardToRecipients;

  DateTime createdAt;

  /// Comparison mode for inbox automation matching.
  InboxForwarderDtoShouldEnum? should;

  InboxAutomationMatchOptions? matchOptions;

  /// Method for extracting text from attachments.
  InboxForwarderDtoAttachmentTextExtractionMethodEnum? attachmentTextExtractionMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients &&
     other.createdAt == createdAt &&
     other.should == should &&
     other.matchOptions == matchOptions &&
     other.attachmentTextExtractionMethod == attachmentTextExtractionMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (field == null ? 0 : field!.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (forwardToRecipients.hashCode) +
    (createdAt.hashCode) +
    (should == null ? 0 : should!.hashCode) +
    (matchOptions == null ? 0 : matchOptions!.hashCode) +
    (attachmentTextExtractionMethod == null ? 0 : attachmentTextExtractionMethod!.hashCode);

  @override
  String toString() => 'InboxForwarderDto[id=$id, inboxId=$inboxId, name=$name, field=$field, match=$match, forwardToRecipients=$forwardToRecipients, createdAt=$createdAt, should=$should, matchOptions=$matchOptions, attachmentTextExtractionMethod=$attachmentTextExtractionMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.field != null) {
      json[r'field'] = this.field;
    } else {
      json[r'field'] = null;
    }
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
      json[r'forwardToRecipients'] = this.forwardToRecipients;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.should != null) {
      json[r'should'] = this.should;
    } else {
      json[r'should'] = null;
    }
    if (this.matchOptions != null) {
      json[r'matchOptions'] = this.matchOptions;
    } else {
      json[r'matchOptions'] = null;
    }
    if (this.attachmentTextExtractionMethod != null) {
      json[r'attachmentTextExtractionMethod'] = this.attachmentTextExtractionMethod;
    } else {
      json[r'attachmentTextExtractionMethod'] = null;
    }
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
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        name: mapValueOfType<String>(json, r'name'),
        field: InboxForwarderDtoFieldEnum.fromJson(json[r'field']),
        match: mapValueOfType<String>(json, r'match'),
        forwardToRecipients: json[r'forwardToRecipients'] is List
            ? (json[r'forwardToRecipients'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        should: InboxForwarderDtoShouldEnum.fromJson(json[r'should']),
        matchOptions: InboxAutomationMatchOptions.fromJson(json[r'matchOptions']),
        attachmentTextExtractionMethod: InboxForwarderDtoAttachmentTextExtractionMethodEnum.fromJson(json[r'attachmentTextExtractionMethod']),
      );
    }
    return null;
  }

  static List<InboxForwarderDto> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxForwarderDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
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
  static const ATTACHMENT_FILENAME = InboxForwarderDtoFieldEnum._(r'ATTACHMENT_FILENAME');
  static const ATTACHMENT_TEXT = InboxForwarderDtoFieldEnum._(r'ATTACHMENT_TEXT');

  /// List of all possible values in this [enum][InboxForwarderDtoFieldEnum].
  static const values = <InboxForwarderDtoFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
    ATTACHMENT_FILENAME,
    ATTACHMENT_TEXT,
  ];

  static InboxForwarderDtoFieldEnum? fromJson(dynamic value) => InboxForwarderDtoFieldEnumTypeTransformer().decode(value);

  static List<InboxForwarderDtoFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
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
        case r'ATTACHMENT_FILENAME': return InboxForwarderDtoFieldEnum.ATTACHMENT_FILENAME;
        case r'ATTACHMENT_TEXT': return InboxForwarderDtoFieldEnum.ATTACHMENT_TEXT;
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


/// Comparison mode for inbox automation matching.
class InboxForwarderDtoShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderDtoShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WILDCARD = InboxForwarderDtoShouldEnum._(r'WILDCARD');
  static const MATCH = InboxForwarderDtoShouldEnum._(r'MATCH');
  static const CONTAIN = InboxForwarderDtoShouldEnum._(r'CONTAIN');
  static const EQUAL = InboxForwarderDtoShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][InboxForwarderDtoShouldEnum].
  static const values = <InboxForwarderDtoShouldEnum>[
    WILDCARD,
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static InboxForwarderDtoShouldEnum? fromJson(dynamic value) => InboxForwarderDtoShouldEnumTypeTransformer().decode(value);

  static List<InboxForwarderDtoShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderDtoShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderDtoShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxForwarderDtoShouldEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderDtoShouldEnum].
class InboxForwarderDtoShouldEnumTypeTransformer {
  factory InboxForwarderDtoShouldEnumTypeTransformer() => _instance ??= const InboxForwarderDtoShouldEnumTypeTransformer._();

  const InboxForwarderDtoShouldEnumTypeTransformer._();

  String encode(InboxForwarderDtoShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderDtoShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderDtoShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WILDCARD': return InboxForwarderDtoShouldEnum.WILDCARD;
        case r'MATCH': return InboxForwarderDtoShouldEnum.MATCH;
        case r'CONTAIN': return InboxForwarderDtoShouldEnum.CONTAIN;
        case r'EQUAL': return InboxForwarderDtoShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxForwarderDtoShouldEnumTypeTransformer] instance.
  static InboxForwarderDtoShouldEnumTypeTransformer? _instance;
}


/// Method for extracting text from attachments.
class InboxForwarderDtoAttachmentTextExtractionMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderDtoAttachmentTextExtractionMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = InboxForwarderDtoAttachmentTextExtractionMethodEnum._(r'AUTO');
  static const NATIVE = InboxForwarderDtoAttachmentTextExtractionMethodEnum._(r'NATIVE');
  static const OCR = InboxForwarderDtoAttachmentTextExtractionMethodEnum._(r'OCR');
  static const LLM = InboxForwarderDtoAttachmentTextExtractionMethodEnum._(r'LLM');
  static const OCR_THEN_LLM = InboxForwarderDtoAttachmentTextExtractionMethodEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][InboxForwarderDtoAttachmentTextExtractionMethodEnum].
  static const values = <InboxForwarderDtoAttachmentTextExtractionMethodEnum>[
    AUTO,
    NATIVE,
    OCR,
    LLM,
    OCR_THEN_LLM,
  ];

  static InboxForwarderDtoAttachmentTextExtractionMethodEnum? fromJson(dynamic value) => InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer().decode(value);

  static List<InboxForwarderDtoAttachmentTextExtractionMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxForwarderDtoAttachmentTextExtractionMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxForwarderDtoAttachmentTextExtractionMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxForwarderDtoAttachmentTextExtractionMethodEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderDtoAttachmentTextExtractionMethodEnum].
class InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer {
  factory InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer() => _instance ??= const InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer._();

  const InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer._();

  String encode(InboxForwarderDtoAttachmentTextExtractionMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderDtoAttachmentTextExtractionMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderDtoAttachmentTextExtractionMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return InboxForwarderDtoAttachmentTextExtractionMethodEnum.AUTO;
        case r'NATIVE': return InboxForwarderDtoAttachmentTextExtractionMethodEnum.NATIVE;
        case r'OCR': return InboxForwarderDtoAttachmentTextExtractionMethodEnum.OCR;
        case r'LLM': return InboxForwarderDtoAttachmentTextExtractionMethodEnum.LLM;
        case r'OCR_THEN_LLM': return InboxForwarderDtoAttachmentTextExtractionMethodEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer] instance.
  static InboxForwarderDtoAttachmentTextExtractionMethodEnumTypeTransformer? _instance;
}


