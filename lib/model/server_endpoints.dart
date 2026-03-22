//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerEndpoints {
  /// Returns a new [ServerEndpoints] instance.
  ServerEndpoints({
    required this.host,
    required this.port,
    required this.tls,
    this.altPorts = const [],
  });

  String host;

  int port;

  bool tls;

  List<int> altPorts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerEndpoints &&
     other.host == host &&
     other.port == port &&
     other.tls == tls &&
     other.altPorts == altPorts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (host.hashCode) +
    (port.hashCode) +
    (tls.hashCode) +
    (altPorts.hashCode);

  @override
  String toString() => 'ServerEndpoints[host=$host, port=$port, tls=$tls, altPorts=$altPorts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'host'] = this.host;
      json[r'port'] = this.port;
      json[r'tls'] = this.tls;
      json[r'altPorts'] = this.altPorts;
    return json;
  }

  /// Returns a new [ServerEndpoints] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerEndpoints? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServerEndpoints[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServerEndpoints[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServerEndpoints(
        host: mapValueOfType<String>(json, r'host')!,
        port: mapValueOfType<int>(json, r'port')!,
        tls: mapValueOfType<bool>(json, r'tls')!,
        altPorts: json[r'altPorts'] is List
            ? (json[r'altPorts'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<ServerEndpoints> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerEndpoints>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerEndpoints.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerEndpoints> mapFromJson(dynamic json) {
    final map = <String, ServerEndpoints>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerEndpoints.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerEndpoints-objects as value to a dart map
  static Map<String, List<ServerEndpoints>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerEndpoints>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerEndpoints.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'host',
    'port',
    'tls',
    'altPorts',
  };
}

