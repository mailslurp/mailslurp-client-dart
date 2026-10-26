//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePublicSpamTestOptions {
  /// Returns a new [CreatePublicSpamTestOptions] instance.
  CreatePublicSpamTestOptions({
    this.fromEmail,
    this.senderDomain,
    required this.requestedSegment,
    required this.addressFormat,
    this.captchaToken,
  });

  /// Optional sender email address. If provided, MailSlurp will also derive senderDomain for compatibility with inbox placement service versions that still expect it.
  String? fromEmail;

  /// Optional sender domain. If omitted and fromEmail is provided, MailSlurp derives it automatically.
  String? senderDomain;

  /// Requested seed cohort for the placement test.
  CreatePublicSpamTestOptionsRequestedSegmentEnum requestedSegment;

  /// Address export format for the returned seed addresses.
  CreatePublicSpamTestOptionsAddressFormatEnum addressFormat;

  /// Optional captcha token when captcha protection is enabled.
  String? captchaToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePublicSpamTestOptions &&
     other.fromEmail == fromEmail &&
     other.senderDomain == senderDomain &&
     other.requestedSegment == requestedSegment &&
     other.addressFormat == addressFormat &&
     other.captchaToken == captchaToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (requestedSegment.hashCode) +
    (addressFormat.hashCode) +
    (captchaToken == null ? 0 : captchaToken!.hashCode);

  @override
  String toString() => 'CreatePublicSpamTestOptions[fromEmail=$fromEmail, senderDomain=$senderDomain, requestedSegment=$requestedSegment, addressFormat=$addressFormat, captchaToken=$captchaToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
      json[r'requestedSegment'] = this.requestedSegment;
      json[r'addressFormat'] = this.addressFormat;
    if (this.captchaToken != null) {
      json[r'captchaToken'] = this.captchaToken;
    } else {
      json[r'captchaToken'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePublicSpamTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePublicSpamTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePublicSpamTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePublicSpamTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePublicSpamTestOptions(
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        requestedSegment: CreatePublicSpamTestOptionsRequestedSegmentEnum.fromJson(json[r'requestedSegment'])!,
        addressFormat: CreatePublicSpamTestOptionsAddressFormatEnum.fromJson(json[r'addressFormat'])!,
        captchaToken: mapValueOfType<String>(json, r'captchaToken'),
      );
    }
    return null;
  }

  static List<CreatePublicSpamTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicSpamTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicSpamTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePublicSpamTestOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePublicSpamTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePublicSpamTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePublicSpamTestOptions-objects as value to a dart map
  static Map<String, List<CreatePublicSpamTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePublicSpamTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePublicSpamTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requestedSegment',
    'addressFormat',
  };
}

/// Requested seed cohort for the placement test.
class CreatePublicSpamTestOptionsRequestedSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePublicSpamTestOptionsRequestedSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL_INBOXES = CreatePublicSpamTestOptionsRequestedSegmentEnum._(r'ALL_INBOXES');
  static const PERSONAL_INBOXES = CreatePublicSpamTestOptionsRequestedSegmentEnum._(r'PERSONAL_INBOXES');
  static const PROFESSIONAL_INBOXES = CreatePublicSpamTestOptionsRequestedSegmentEnum._(r'PROFESSIONAL_INBOXES');

  /// List of all possible values in this [enum][CreatePublicSpamTestOptionsRequestedSegmentEnum].
  static const values = <CreatePublicSpamTestOptionsRequestedSegmentEnum>[
    ALL_INBOXES,
    PERSONAL_INBOXES,
    PROFESSIONAL_INBOXES,
  ];

  static CreatePublicSpamTestOptionsRequestedSegmentEnum? fromJson(dynamic value) => CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer().decode(value);

  static List<CreatePublicSpamTestOptionsRequestedSegmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicSpamTestOptionsRequestedSegmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicSpamTestOptionsRequestedSegmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePublicSpamTestOptionsRequestedSegmentEnum] to String,
/// and [decode] dynamic data back to [CreatePublicSpamTestOptionsRequestedSegmentEnum].
class CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer {
  factory CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer() => _instance ??= const CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer._();

  const CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer._();

  String encode(CreatePublicSpamTestOptionsRequestedSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePublicSpamTestOptionsRequestedSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePublicSpamTestOptionsRequestedSegmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL_INBOXES': return CreatePublicSpamTestOptionsRequestedSegmentEnum.ALL_INBOXES;
        case r'PERSONAL_INBOXES': return CreatePublicSpamTestOptionsRequestedSegmentEnum.PERSONAL_INBOXES;
        case r'PROFESSIONAL_INBOXES': return CreatePublicSpamTestOptionsRequestedSegmentEnum.PROFESSIONAL_INBOXES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer] instance.
  static CreatePublicSpamTestOptionsRequestedSegmentEnumTypeTransformer? _instance;
}


/// Address export format for the returned seed addresses.
class CreatePublicSpamTestOptionsAddressFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CreatePublicSpamTestOptionsAddressFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COMMA = CreatePublicSpamTestOptionsAddressFormatEnum._(r'COMMA');
  static const NEWLINE = CreatePublicSpamTestOptionsAddressFormatEnum._(r'NEWLINE');

  /// List of all possible values in this [enum][CreatePublicSpamTestOptionsAddressFormatEnum].
  static const values = <CreatePublicSpamTestOptionsAddressFormatEnum>[
    COMMA,
    NEWLINE,
  ];

  static CreatePublicSpamTestOptionsAddressFormatEnum? fromJson(dynamic value) => CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer().decode(value);

  static List<CreatePublicSpamTestOptionsAddressFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePublicSpamTestOptionsAddressFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePublicSpamTestOptionsAddressFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreatePublicSpamTestOptionsAddressFormatEnum] to String,
/// and [decode] dynamic data back to [CreatePublicSpamTestOptionsAddressFormatEnum].
class CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer {
  factory CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer() => _instance ??= const CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer._();

  const CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer._();

  String encode(CreatePublicSpamTestOptionsAddressFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreatePublicSpamTestOptionsAddressFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreatePublicSpamTestOptionsAddressFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COMMA': return CreatePublicSpamTestOptionsAddressFormatEnum.COMMA;
        case r'NEWLINE': return CreatePublicSpamTestOptionsAddressFormatEnum.NEWLINE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer] instance.
  static CreatePublicSpamTestOptionsAddressFormatEnumTypeTransformer? _instance;
}


