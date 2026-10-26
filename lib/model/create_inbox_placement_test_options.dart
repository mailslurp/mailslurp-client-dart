//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxPlacementTestOptions {
  /// Returns a new [CreateInboxPlacementTestOptions] instance.
  CreateInboxPlacementTestOptions({
    this.seedlistProfile,
    required this.requestedSegment,
    this.senderDomain,
    this.fromEmail,
    required this.publicShareRequested,
    required this.addressFormat,
  });

  String? seedlistProfile;

  CreateInboxPlacementTestOptionsRequestedSegmentEnum requestedSegment;

  String? senderDomain;

  String? fromEmail;

  bool publicShareRequested;

  CreateInboxPlacementTestOptionsAddressFormatEnum addressFormat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxPlacementTestOptions &&
     other.seedlistProfile == seedlistProfile &&
     other.requestedSegment == requestedSegment &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.publicShareRequested == publicShareRequested &&
     other.addressFormat == addressFormat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (requestedSegment.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (publicShareRequested.hashCode) +
    (addressFormat.hashCode);

  @override
  String toString() => 'CreateInboxPlacementTestOptions[seedlistProfile=$seedlistProfile, requestedSegment=$requestedSegment, senderDomain=$senderDomain, fromEmail=$fromEmail, publicShareRequested=$publicShareRequested, addressFormat=$addressFormat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.seedlistProfile != null) {
      json[r'seedlistProfile'] = this.seedlistProfile;
    } else {
      json[r'seedlistProfile'] = null;
    }
      json[r'requestedSegment'] = this.requestedSegment;
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
      json[r'publicShareRequested'] = this.publicShareRequested;
      json[r'addressFormat'] = this.addressFormat;
    return json;
  }

  /// Returns a new [CreateInboxPlacementTestOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxPlacementTestOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxPlacementTestOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxPlacementTestOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxPlacementTestOptions(
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        requestedSegment: CreateInboxPlacementTestOptionsRequestedSegmentEnum.fromJson(json[r'requestedSegment'])!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        publicShareRequested: mapValueOfType<bool>(json, r'publicShareRequested')!,
        addressFormat: CreateInboxPlacementTestOptionsAddressFormatEnum.fromJson(json[r'addressFormat'])!,
      );
    }
    return null;
  }

  static List<CreateInboxPlacementTestOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxPlacementTestOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxPlacementTestOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxPlacementTestOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxPlacementTestOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxPlacementTestOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxPlacementTestOptions-objects as value to a dart map
  static Map<String, List<CreateInboxPlacementTestOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxPlacementTestOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxPlacementTestOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requestedSegment',
    'publicShareRequested',
    'addressFormat',
  };
}


class CreateInboxPlacementTestOptionsRequestedSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxPlacementTestOptionsRequestedSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ALL_INBOXES = CreateInboxPlacementTestOptionsRequestedSegmentEnum._(r'ALL_INBOXES');
  static const PERSONAL_INBOXES = CreateInboxPlacementTestOptionsRequestedSegmentEnum._(r'PERSONAL_INBOXES');
  static const PROFESSIONAL_INBOXES = CreateInboxPlacementTestOptionsRequestedSegmentEnum._(r'PROFESSIONAL_INBOXES');

  /// List of all possible values in this [enum][CreateInboxPlacementTestOptionsRequestedSegmentEnum].
  static const values = <CreateInboxPlacementTestOptionsRequestedSegmentEnum>[
    ALL_INBOXES,
    PERSONAL_INBOXES,
    PROFESSIONAL_INBOXES,
  ];

  static CreateInboxPlacementTestOptionsRequestedSegmentEnum? fromJson(dynamic value) => CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer().decode(value);

  static List<CreateInboxPlacementTestOptionsRequestedSegmentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxPlacementTestOptionsRequestedSegmentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxPlacementTestOptionsRequestedSegmentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxPlacementTestOptionsRequestedSegmentEnum] to String,
/// and [decode] dynamic data back to [CreateInboxPlacementTestOptionsRequestedSegmentEnum].
class CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer {
  factory CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer() => _instance ??= const CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer._();

  const CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer._();

  String encode(CreateInboxPlacementTestOptionsRequestedSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxPlacementTestOptionsRequestedSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxPlacementTestOptionsRequestedSegmentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ALL_INBOXES': return CreateInboxPlacementTestOptionsRequestedSegmentEnum.ALL_INBOXES;
        case r'PERSONAL_INBOXES': return CreateInboxPlacementTestOptionsRequestedSegmentEnum.PERSONAL_INBOXES;
        case r'PROFESSIONAL_INBOXES': return CreateInboxPlacementTestOptionsRequestedSegmentEnum.PROFESSIONAL_INBOXES;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer] instance.
  static CreateInboxPlacementTestOptionsRequestedSegmentEnumTypeTransformer? _instance;
}



class CreateInboxPlacementTestOptionsAddressFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxPlacementTestOptionsAddressFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COMMA = CreateInboxPlacementTestOptionsAddressFormatEnum._(r'COMMA');
  static const NEWLINE = CreateInboxPlacementTestOptionsAddressFormatEnum._(r'NEWLINE');

  /// List of all possible values in this [enum][CreateInboxPlacementTestOptionsAddressFormatEnum].
  static const values = <CreateInboxPlacementTestOptionsAddressFormatEnum>[
    COMMA,
    NEWLINE,
  ];

  static CreateInboxPlacementTestOptionsAddressFormatEnum? fromJson(dynamic value) => CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer().decode(value);

  static List<CreateInboxPlacementTestOptionsAddressFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxPlacementTestOptionsAddressFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxPlacementTestOptionsAddressFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxPlacementTestOptionsAddressFormatEnum] to String,
/// and [decode] dynamic data back to [CreateInboxPlacementTestOptionsAddressFormatEnum].
class CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer {
  factory CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer() => _instance ??= const CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer._();

  const CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer._();

  String encode(CreateInboxPlacementTestOptionsAddressFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxPlacementTestOptionsAddressFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxPlacementTestOptionsAddressFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COMMA': return CreateInboxPlacementTestOptionsAddressFormatEnum.COMMA;
        case r'NEWLINE': return CreateInboxPlacementTestOptionsAddressFormatEnum.NEWLINE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer] instance.
  static CreateInboxPlacementTestOptionsAddressFormatEnumTypeTransformer? _instance;
}


