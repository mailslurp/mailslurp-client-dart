//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxForwarderOptions {
  /// Returns a new [CreateInboxForwarderOptions] instance.
  CreateInboxForwarderOptions({
    this.field,
    this.match,
    this.forwardToRecipients = const [],
    this.should,
    this.matchOptions,
    this.attachmentTextExtractionMethod,
  });

  /// Field to match against to trigger inbox forwarding for inbound email
  CreateInboxForwarderOptionsFieldEnum? field;

  /// String or wildcard style match for field specified when evaluating forwarding rules
  String? match;

  /// Email addresses to forward an email to if it matches the field and match criteria of the forwarder
  List<String> forwardToRecipients;

  /// Comparison mode for inbox automation matching.
  CreateInboxForwarderOptionsShouldEnum? should;

  InboxAutomationMatchOptions? matchOptions;

  /// Method for extracting text from attachments.
  CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum? attachmentTextExtractionMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxForwarderOptions &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients &&
     other.should == should &&
     other.matchOptions == matchOptions &&
     other.attachmentTextExtractionMethod == attachmentTextExtractionMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (field == null ? 0 : field!.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (forwardToRecipients.hashCode) +
    (should == null ? 0 : should!.hashCode) +
    (matchOptions == null ? 0 : matchOptions!.hashCode) +
    (attachmentTextExtractionMethod == null ? 0 : attachmentTextExtractionMethod!.hashCode);

  @override
  String toString() => 'CreateInboxForwarderOptions[field=$field, match=$match, forwardToRecipients=$forwardToRecipients, should=$should, matchOptions=$matchOptions, attachmentTextExtractionMethod=$attachmentTextExtractionMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [CreateInboxForwarderOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxForwarderOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxForwarderOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxForwarderOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxForwarderOptions(
        field: CreateInboxForwarderOptionsFieldEnum.fromJson(json[r'field']),
        match: mapValueOfType<String>(json, r'match'),
        forwardToRecipients: json[r'forwardToRecipients'] is List
            ? (json[r'forwardToRecipients'] as List).cast<String>()
            : const [],
        should: CreateInboxForwarderOptionsShouldEnum.fromJson(json[r'should']),
        matchOptions: InboxAutomationMatchOptions.fromJson(json[r'matchOptions']),
        attachmentTextExtractionMethod: CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.fromJson(json[r'attachmentTextExtractionMethod']),
      );
    }
    return null;
  }

  static List<CreateInboxForwarderOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxForwarderOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxForwarderOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxForwarderOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxForwarderOptions-objects as value to a dart map
  static Map<String, List<CreateInboxForwarderOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxForwarderOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxForwarderOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'forwardToRecipients',
  };
}

/// Field to match against to trigger inbox forwarding for inbound email
class CreateInboxForwarderOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxForwarderOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = CreateInboxForwarderOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = CreateInboxForwarderOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = CreateInboxForwarderOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = CreateInboxForwarderOptionsFieldEnum._(r'ATTACHMENTS');
  static const ATTACHMENT_FILENAME = CreateInboxForwarderOptionsFieldEnum._(r'ATTACHMENT_FILENAME');
  static const ATTACHMENT_TEXT = CreateInboxForwarderOptionsFieldEnum._(r'ATTACHMENT_TEXT');

  /// List of all possible values in this [enum][CreateInboxForwarderOptionsFieldEnum].
  static const values = <CreateInboxForwarderOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
    ATTACHMENT_FILENAME,
    ATTACHMENT_TEXT,
  ];

  static CreateInboxForwarderOptionsFieldEnum? fromJson(dynamic value) => CreateInboxForwarderOptionsFieldEnumTypeTransformer().decode(value);

  static List<CreateInboxForwarderOptionsFieldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptionsFieldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptionsFieldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxForwarderOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxForwarderOptionsFieldEnum].
class CreateInboxForwarderOptionsFieldEnumTypeTransformer {
  factory CreateInboxForwarderOptionsFieldEnumTypeTransformer() => _instance ??= const CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  const CreateInboxForwarderOptionsFieldEnumTypeTransformer._();

  String encode(CreateInboxForwarderOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxForwarderOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxForwarderOptionsFieldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RECIPIENTS': return CreateInboxForwarderOptionsFieldEnum.RECIPIENTS;
        case r'SENDER': return CreateInboxForwarderOptionsFieldEnum.SENDER;
        case r'SUBJECT': return CreateInboxForwarderOptionsFieldEnum.SUBJECT;
        case r'ATTACHMENTS': return CreateInboxForwarderOptionsFieldEnum.ATTACHMENTS;
        case r'ATTACHMENT_FILENAME': return CreateInboxForwarderOptionsFieldEnum.ATTACHMENT_FILENAME;
        case r'ATTACHMENT_TEXT': return CreateInboxForwarderOptionsFieldEnum.ATTACHMENT_TEXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxForwarderOptionsFieldEnumTypeTransformer] instance.
  static CreateInboxForwarderOptionsFieldEnumTypeTransformer? _instance;
}


/// Comparison mode for inbox automation matching.
class CreateInboxForwarderOptionsShouldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxForwarderOptionsShouldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WILDCARD = CreateInboxForwarderOptionsShouldEnum._(r'WILDCARD');
  static const MATCH = CreateInboxForwarderOptionsShouldEnum._(r'MATCH');
  static const CONTAIN = CreateInboxForwarderOptionsShouldEnum._(r'CONTAIN');
  static const EQUAL = CreateInboxForwarderOptionsShouldEnum._(r'EQUAL');

  /// List of all possible values in this [enum][CreateInboxForwarderOptionsShouldEnum].
  static const values = <CreateInboxForwarderOptionsShouldEnum>[
    WILDCARD,
    MATCH,
    CONTAIN,
    EQUAL,
  ];

  static CreateInboxForwarderOptionsShouldEnum? fromJson(dynamic value) => CreateInboxForwarderOptionsShouldEnumTypeTransformer().decode(value);

  static List<CreateInboxForwarderOptionsShouldEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptionsShouldEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptionsShouldEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxForwarderOptionsShouldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxForwarderOptionsShouldEnum].
class CreateInboxForwarderOptionsShouldEnumTypeTransformer {
  factory CreateInboxForwarderOptionsShouldEnumTypeTransformer() => _instance ??= const CreateInboxForwarderOptionsShouldEnumTypeTransformer._();

  const CreateInboxForwarderOptionsShouldEnumTypeTransformer._();

  String encode(CreateInboxForwarderOptionsShouldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxForwarderOptionsShouldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxForwarderOptionsShouldEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WILDCARD': return CreateInboxForwarderOptionsShouldEnum.WILDCARD;
        case r'MATCH': return CreateInboxForwarderOptionsShouldEnum.MATCH;
        case r'CONTAIN': return CreateInboxForwarderOptionsShouldEnum.CONTAIN;
        case r'EQUAL': return CreateInboxForwarderOptionsShouldEnum.EQUAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxForwarderOptionsShouldEnumTypeTransformer] instance.
  static CreateInboxForwarderOptionsShouldEnumTypeTransformer? _instance;
}


/// Method for extracting text from attachments.
class CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(r'AUTO');
  static const NATIVE = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(r'NATIVE');
  static const OCR = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(r'OCR');
  static const LLM = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(r'LLM');
  static const OCR_THEN_LLM = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum].
  static const values = <CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum>[
    AUTO,
    NATIVE,
    OCR,
    LLM,
    OCR_THEN_LLM,
  ];

  static CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum? fromJson(dynamic value) => CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer().decode(value);

  static List<CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum] to String,
/// and [decode] dynamic data back to [CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum].
class CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer {
  factory CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer() => _instance ??= const CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer._();

  const CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer._();

  String encode(CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.AUTO;
        case r'NATIVE': return CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.NATIVE;
        case r'OCR': return CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.OCR;
        case r'LLM': return CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.LLM;
        case r'OCR_THEN_LLM': return CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer] instance.
  static CreateInboxForwarderOptionsAttachmentTextExtractionMethodEnumTypeTransformer? _instance;
}


