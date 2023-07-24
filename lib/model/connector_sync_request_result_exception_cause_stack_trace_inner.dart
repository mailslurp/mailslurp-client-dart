//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResultExceptionCauseStackTraceInner {
  /// Returns a new [ConnectorSyncRequestResultExceptionCauseStackTraceInner] instance.
  ConnectorSyncRequestResultExceptionCauseStackTraceInner({
    this.classLoaderName,
    this.moduleName,
    this.moduleVersion,
    this.methodName,
    this.fileName,
    this.lineNumber,
    this.nativeMethod,
    this.className,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? classLoaderName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? moduleName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? moduleVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? methodName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lineNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? nativeMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? className;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResultExceptionCauseStackTraceInner &&
     other.classLoaderName == classLoaderName &&
     other.moduleName == moduleName &&
     other.moduleVersion == moduleVersion &&
     other.methodName == methodName &&
     other.fileName == fileName &&
     other.lineNumber == lineNumber &&
     other.nativeMethod == nativeMethod &&
     other.className == className;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classLoaderName == null ? 0 : classLoaderName!.hashCode) +
    (moduleName == null ? 0 : moduleName!.hashCode) +
    (moduleVersion == null ? 0 : moduleVersion!.hashCode) +
    (methodName == null ? 0 : methodName!.hashCode) +
    (fileName == null ? 0 : fileName!.hashCode) +
    (lineNumber == null ? 0 : lineNumber!.hashCode) +
    (nativeMethod == null ? 0 : nativeMethod!.hashCode) +
    (className == null ? 0 : className!.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResultExceptionCauseStackTraceInner[classLoaderName=$classLoaderName, moduleName=$moduleName, moduleVersion=$moduleVersion, methodName=$methodName, fileName=$fileName, lineNumber=$lineNumber, nativeMethod=$nativeMethod, className=$className]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.classLoaderName != null) {
      json[r'classLoaderName'] = this.classLoaderName;
    } else {
      json[r'classLoaderName'] = null;
    }
    if (this.moduleName != null) {
      json[r'moduleName'] = this.moduleName;
    } else {
      json[r'moduleName'] = null;
    }
    if (this.moduleVersion != null) {
      json[r'moduleVersion'] = this.moduleVersion;
    } else {
      json[r'moduleVersion'] = null;
    }
    if (this.methodName != null) {
      json[r'methodName'] = this.methodName;
    } else {
      json[r'methodName'] = null;
    }
    if (this.fileName != null) {
      json[r'fileName'] = this.fileName;
    } else {
      json[r'fileName'] = null;
    }
    if (this.lineNumber != null) {
      json[r'lineNumber'] = this.lineNumber;
    } else {
      json[r'lineNumber'] = null;
    }
    if (this.nativeMethod != null) {
      json[r'nativeMethod'] = this.nativeMethod;
    } else {
      json[r'nativeMethod'] = null;
    }
    if (this.className != null) {
      json[r'className'] = this.className;
    } else {
      json[r'className'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResultExceptionCauseStackTraceInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncRequestResultExceptionCauseStackTraceInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncRequestResultExceptionCauseStackTraceInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncRequestResultExceptionCauseStackTraceInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncRequestResultExceptionCauseStackTraceInner(
        classLoaderName: mapValueOfType<String>(json, r'classLoaderName'),
        moduleName: mapValueOfType<String>(json, r'moduleName'),
        moduleVersion: mapValueOfType<String>(json, r'moduleVersion'),
        methodName: mapValueOfType<String>(json, r'methodName'),
        fileName: mapValueOfType<String>(json, r'fileName'),
        lineNumber: mapValueOfType<int>(json, r'lineNumber'),
        nativeMethod: mapValueOfType<bool>(json, r'nativeMethod'),
        className: mapValueOfType<String>(json, r'className'),
      );
    }
    return null;
  }

  static List<ConnectorSyncRequestResultExceptionCauseStackTraceInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncRequestResultExceptionCauseStackTraceInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncRequestResultExceptionCauseStackTraceInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncRequestResultExceptionCauseStackTraceInner> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncRequestResultExceptionCauseStackTraceInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncRequestResultExceptionCauseStackTraceInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResultExceptionCauseStackTraceInner-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResultExceptionCauseStackTraceInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncRequestResultExceptionCauseStackTraceInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncRequestResultExceptionCauseStackTraceInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

