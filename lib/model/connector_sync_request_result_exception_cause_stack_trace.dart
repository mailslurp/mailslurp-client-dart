//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncRequestResultExceptionCauseStackTrace {
  /// Returns a new [ConnectorSyncRequestResultExceptionCauseStackTrace] instance.
  ConnectorSyncRequestResultExceptionCauseStackTrace({
    this.classLoaderName,
    this.moduleName,
    this.moduleVersion,
    this.methodName,
    this.fileName,
    this.lineNumber,
    this.nativeMethod,
    this.className,
  });

  String classLoaderName;

  String moduleName;

  String moduleVersion;

  String methodName;

  String fileName;

  int lineNumber;

  bool nativeMethod;

  String className;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncRequestResultExceptionCauseStackTrace &&
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
    (classLoaderName == null ? 0 : classLoaderName.hashCode) +
    (moduleName == null ? 0 : moduleName.hashCode) +
    (moduleVersion == null ? 0 : moduleVersion.hashCode) +
    (methodName == null ? 0 : methodName.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (lineNumber == null ? 0 : lineNumber.hashCode) +
    (nativeMethod == null ? 0 : nativeMethod.hashCode) +
    (className == null ? 0 : className.hashCode);

  @override
  String toString() => 'ConnectorSyncRequestResultExceptionCauseStackTrace[classLoaderName=$classLoaderName, moduleName=$moduleName, moduleVersion=$moduleVersion, methodName=$methodName, fileName=$fileName, lineNumber=$lineNumber, nativeMethod=$nativeMethod, className=$className]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (classLoaderName != null) {
      json[r'classLoaderName'] = classLoaderName;
    }
    if (moduleName != null) {
      json[r'moduleName'] = moduleName;
    }
    if (moduleVersion != null) {
      json[r'moduleVersion'] = moduleVersion;
    }
    if (methodName != null) {
      json[r'methodName'] = methodName;
    }
    if (fileName != null) {
      json[r'fileName'] = fileName;
    }
    if (lineNumber != null) {
      json[r'lineNumber'] = lineNumber;
    }
    if (nativeMethod != null) {
      json[r'nativeMethod'] = nativeMethod;
    }
    if (className != null) {
      json[r'className'] = className;
    }
    return json;
  }

  /// Returns a new [ConnectorSyncRequestResultExceptionCauseStackTrace] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ConnectorSyncRequestResultExceptionCauseStackTrace fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ConnectorSyncRequestResultExceptionCauseStackTrace(
        classLoaderName: json[r'classLoaderName'],
        moduleName: json[r'moduleName'],
        moduleVersion: json[r'moduleVersion'],
        methodName: json[r'methodName'],
        fileName: json[r'fileName'],
        lineNumber: json[r'lineNumber'],
        nativeMethod: json[r'nativeMethod'],
        className: json[r'className'],
    );

  static List<ConnectorSyncRequestResultExceptionCauseStackTrace> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ConnectorSyncRequestResultExceptionCauseStackTrace>[]
      : json.map((v) => ConnectorSyncRequestResultExceptionCauseStackTrace.fromJson(v)).toList(growable: true == growable);

  static Map<String, ConnectorSyncRequestResultExceptionCauseStackTrace> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ConnectorSyncRequestResultExceptionCauseStackTrace>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ConnectorSyncRequestResultExceptionCauseStackTrace.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncRequestResultExceptionCauseStackTrace-objects as value to a dart map
  static Map<String, List<ConnectorSyncRequestResultExceptionCauseStackTrace>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ConnectorSyncRequestResultExceptionCauseStackTrace>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ConnectorSyncRequestResultExceptionCauseStackTrace.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

