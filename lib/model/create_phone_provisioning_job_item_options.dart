//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePhoneProvisioningJobItemOptions {
  /// Returns a new [CreatePhoneProvisioningJobItemOptions] instance.
  CreatePhoneProvisioningJobItemOptions({
    required this.phoneNumber,
    this.providerLabel,
    this.lineType,
    this.carrierName,
    this.mobileCountryCode,
    this.mobileNetworkCode,
  });

  String phoneNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lineType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? carrierName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileCountryCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobileNetworkCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePhoneProvisioningJobItemOptions &&
     other.phoneNumber == phoneNumber &&
     other.providerLabel == providerLabel &&
     other.lineType == lineType &&
     other.carrierName == carrierName &&
     other.mobileCountryCode == mobileCountryCode &&
     other.mobileNetworkCode == mobileNetworkCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (phoneNumber.hashCode) +
    (providerLabel == null ? 0 : providerLabel!.hashCode) +
    (lineType == null ? 0 : lineType!.hashCode) +
    (carrierName == null ? 0 : carrierName!.hashCode) +
    (mobileCountryCode == null ? 0 : mobileCountryCode!.hashCode) +
    (mobileNetworkCode == null ? 0 : mobileNetworkCode!.hashCode);

  @override
  String toString() => 'CreatePhoneProvisioningJobItemOptions[phoneNumber=$phoneNumber, providerLabel=$providerLabel, lineType=$lineType, carrierName=$carrierName, mobileCountryCode=$mobileCountryCode, mobileNetworkCode=$mobileNetworkCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'phoneNumber'] = this.phoneNumber;
    if (this.providerLabel != null) {
      json[r'providerLabel'] = this.providerLabel;
    } else {
      json[r'providerLabel'] = null;
    }
    if (this.lineType != null) {
      json[r'lineType'] = this.lineType;
    } else {
      json[r'lineType'] = null;
    }
    if (this.carrierName != null) {
      json[r'carrierName'] = this.carrierName;
    } else {
      json[r'carrierName'] = null;
    }
    if (this.mobileCountryCode != null) {
      json[r'mobileCountryCode'] = this.mobileCountryCode;
    } else {
      json[r'mobileCountryCode'] = null;
    }
    if (this.mobileNetworkCode != null) {
      json[r'mobileNetworkCode'] = this.mobileNetworkCode;
    } else {
      json[r'mobileNetworkCode'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePhoneProvisioningJobItemOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePhoneProvisioningJobItemOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePhoneProvisioningJobItemOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePhoneProvisioningJobItemOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePhoneProvisioningJobItemOptions(
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        providerLabel: mapValueOfType<String>(json, r'providerLabel'),
        lineType: mapValueOfType<String>(json, r'lineType'),
        carrierName: mapValueOfType<String>(json, r'carrierName'),
        mobileCountryCode: mapValueOfType<String>(json, r'mobileCountryCode'),
        mobileNetworkCode: mapValueOfType<String>(json, r'mobileNetworkCode'),
      );
    }
    return null;
  }

  static List<CreatePhoneProvisioningJobItemOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePhoneProvisioningJobItemOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePhoneProvisioningJobItemOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePhoneProvisioningJobItemOptions> mapFromJson(dynamic json) {
    final map = <String, CreatePhoneProvisioningJobItemOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePhoneProvisioningJobItemOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePhoneProvisioningJobItemOptions-objects as value to a dart map
  static Map<String, List<CreatePhoneProvisioningJobItemOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePhoneProvisioningJobItemOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePhoneProvisioningJobItemOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'phoneNumber',
  };
}

