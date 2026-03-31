//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDevicePreviewFeedbackOptions {
  /// Returns a new [UpdateDevicePreviewFeedbackOptions] instance.
  UpdateDevicePreviewFeedbackOptions({
    this.status,
    this.rating,
    this.title,
    this.comment,
    this.internalNote,
    this.appendInternalNote,
    this.sessionId,
    this.liveViewUrl,
    this.metadata = const {},
  });

  UpdateDevicePreviewFeedbackOptionsStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rating;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? internalNote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? appendInternalNote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveViewUrl;

  Map<String, String> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDevicePreviewFeedbackOptions &&
     other.status == status &&
     other.rating == rating &&
     other.title == title &&
     other.comment == comment &&
     other.internalNote == internalNote &&
     other.appendInternalNote == appendInternalNote &&
     other.sessionId == sessionId &&
     other.liveViewUrl == liveViewUrl &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode) +
    (rating == null ? 0 : rating!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (internalNote == null ? 0 : internalNote!.hashCode) +
    (appendInternalNote == null ? 0 : appendInternalNote!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (liveViewUrl == null ? 0 : liveViewUrl!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'UpdateDevicePreviewFeedbackOptions[status=$status, rating=$rating, title=$title, comment=$comment, internalNote=$internalNote, appendInternalNote=$appendInternalNote, sessionId=$sessionId, liveViewUrl=$liveViewUrl, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.internalNote != null) {
      json[r'internalNote'] = this.internalNote;
    } else {
      json[r'internalNote'] = null;
    }
    if (this.appendInternalNote != null) {
      json[r'appendInternalNote'] = this.appendInternalNote;
    } else {
      json[r'appendInternalNote'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.liveViewUrl != null) {
      json[r'liveViewUrl'] = this.liveViewUrl;
    } else {
      json[r'liveViewUrl'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [UpdateDevicePreviewFeedbackOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDevicePreviewFeedbackOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDevicePreviewFeedbackOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDevicePreviewFeedbackOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDevicePreviewFeedbackOptions(
        status: UpdateDevicePreviewFeedbackOptionsStatusEnum.fromJson(json[r'status']),
        rating: mapValueOfType<int>(json, r'rating'),
        title: mapValueOfType<String>(json, r'title'),
        comment: mapValueOfType<String>(json, r'comment'),
        internalNote: mapValueOfType<String>(json, r'internalNote'),
        appendInternalNote: mapValueOfType<bool>(json, r'appendInternalNote'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        liveViewUrl: mapValueOfType<String>(json, r'liveViewUrl'),
        metadata: mapCastOfType<String, String>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<UpdateDevicePreviewFeedbackOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDevicePreviewFeedbackOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDevicePreviewFeedbackOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDevicePreviewFeedbackOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateDevicePreviewFeedbackOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDevicePreviewFeedbackOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDevicePreviewFeedbackOptions-objects as value to a dart map
  static Map<String, List<UpdateDevicePreviewFeedbackOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDevicePreviewFeedbackOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDevicePreviewFeedbackOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UpdateDevicePreviewFeedbackOptionsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateDevicePreviewFeedbackOptionsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = UpdateDevicePreviewFeedbackOptionsStatusEnum._(r'OPEN');
  static const ACKNOWLEDGED = UpdateDevicePreviewFeedbackOptionsStatusEnum._(r'ACKNOWLEDGED');
  static const RESOLVED = UpdateDevicePreviewFeedbackOptionsStatusEnum._(r'RESOLVED');
  static const DISMISSED = UpdateDevicePreviewFeedbackOptionsStatusEnum._(r'DISMISSED');

  /// List of all possible values in this [enum][UpdateDevicePreviewFeedbackOptionsStatusEnum].
  static const values = <UpdateDevicePreviewFeedbackOptionsStatusEnum>[
    OPEN,
    ACKNOWLEDGED,
    RESOLVED,
    DISMISSED,
  ];

  static UpdateDevicePreviewFeedbackOptionsStatusEnum? fromJson(dynamic value) => UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer().decode(value);

  static List<UpdateDevicePreviewFeedbackOptionsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDevicePreviewFeedbackOptionsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDevicePreviewFeedbackOptionsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateDevicePreviewFeedbackOptionsStatusEnum] to String,
/// and [decode] dynamic data back to [UpdateDevicePreviewFeedbackOptionsStatusEnum].
class UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer {
  factory UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer() => _instance ??= const UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer._();

  const UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer._();

  String encode(UpdateDevicePreviewFeedbackOptionsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateDevicePreviewFeedbackOptionsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateDevicePreviewFeedbackOptionsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return UpdateDevicePreviewFeedbackOptionsStatusEnum.OPEN;
        case r'ACKNOWLEDGED': return UpdateDevicePreviewFeedbackOptionsStatusEnum.ACKNOWLEDGED;
        case r'RESOLVED': return UpdateDevicePreviewFeedbackOptionsStatusEnum.RESOLVED;
        case r'DISMISSED': return UpdateDevicePreviewFeedbackOptionsStatusEnum.DISMISSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer] instance.
  static UpdateDevicePreviewFeedbackOptionsStatusEnumTypeTransformer? _instance;
}


