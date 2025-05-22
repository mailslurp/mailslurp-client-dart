//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StructuredOutputSchema {
  /// Returns a new [StructuredOutputSchema] instance.
  StructuredOutputSchema({
    this.anyOf = const [],
    this.default_,
    this.description,
    this.enum_ = const [],
    this.example,
    this.format,
    this.items,
    this.maxItems,
    this.minItems,
    this.maxLength,
    this.minLength,
    this.pattern,
    this.properties = const {},
    this.propertyOrdering = const [],
    this.required_ = const [],
    this.maxProperties,
    this.minProperties,
    this.maximum,
    this.minimum,
    this.nullable,
    this.title,
    this.type,
  });

  List<StructuredOutputSchema>? anyOf;

  Object? default_;

  /// Provide a description of the schema to help the AI understand the schema.
  String? description;

  /// When using type string and format enum pass a collection of enum values here.
  List<String>? enum_;

  Object? example;

  /// Format for string types. Can be null, date-time or enum.
  String? format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StructuredOutputSchema? items;

  /// Minimum value: 0
  int? maxItems;

  /// Minimum value: 0
  int? minItems;

  /// Minimum value: 0
  int? maxLength;

  /// Minimum value: 0
  int? minLength;

  String? pattern;

  /// Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property.
  Map<String, StructuredOutputSchema>? properties;

  /// Pass an array of property names to specify the order of properties in the generated JSON object if required.
  List<String>? propertyOrdering;

  List<String>? required_;

  /// Minimum value: 0
  int? maxProperties;

  /// Minimum value: 0
  int? minProperties;

  num? maximum;

  num? minimum;

  bool? nullable;

  String? title;

  /// Primitive JSON schema types with a fallback CUSTOM for unknown values.
  StructuredOutputSchemaTypeEnum? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StructuredOutputSchema &&
     other.anyOf == anyOf &&
     other.default_ == default_ &&
     other.description == description &&
     other.enum_ == enum_ &&
     other.example == example &&
     other.format == format &&
     other.items == items &&
     other.maxItems == maxItems &&
     other.minItems == minItems &&
     other.maxLength == maxLength &&
     other.minLength == minLength &&
     other.pattern == pattern &&
     other.properties == properties &&
     other.propertyOrdering == propertyOrdering &&
     other.required_ == required_ &&
     other.maxProperties == maxProperties &&
     other.minProperties == minProperties &&
     other.maximum == maximum &&
     other.minimum == minimum &&
     other.nullable == nullable &&
     other.title == title &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anyOf == null ? 0 : anyOf!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (enum_ == null ? 0 : enum_!.hashCode) +
    (example == null ? 0 : example!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (maxItems == null ? 0 : maxItems!.hashCode) +
    (minItems == null ? 0 : minItems!.hashCode) +
    (maxLength == null ? 0 : maxLength!.hashCode) +
    (minLength == null ? 0 : minLength!.hashCode) +
    (pattern == null ? 0 : pattern!.hashCode) +
    (properties == null ? 0 : properties!.hashCode) +
    (propertyOrdering == null ? 0 : propertyOrdering!.hashCode) +
    (required_ == null ? 0 : required_!.hashCode) +
    (maxProperties == null ? 0 : maxProperties!.hashCode) +
    (minProperties == null ? 0 : minProperties!.hashCode) +
    (maximum == null ? 0 : maximum!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (nullable == null ? 0 : nullable!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'StructuredOutputSchema[anyOf=$anyOf, default_=$default_, description=$description, enum_=$enum_, example=$example, format=$format, items=$items, maxItems=$maxItems, minItems=$minItems, maxLength=$maxLength, minLength=$minLength, pattern=$pattern, properties=$properties, propertyOrdering=$propertyOrdering, required_=$required_, maxProperties=$maxProperties, minProperties=$minProperties, maximum=$maximum, minimum=$minimum, nullable=$nullable, title=$title, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anyOf != null) {
      json[r'anyOf'] = this.anyOf;
    } else {
      json[r'anyOf'] = null;
    }
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.enum_ != null) {
      json[r'enum'] = this.enum_;
    } else {
      json[r'enum'] = null;
    }
    if (this.example != null) {
      json[r'example'] = this.example;
    } else {
      json[r'example'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.maxItems != null) {
      json[r'maxItems'] = this.maxItems;
    } else {
      json[r'maxItems'] = null;
    }
    if (this.minItems != null) {
      json[r'minItems'] = this.minItems;
    } else {
      json[r'minItems'] = null;
    }
    if (this.maxLength != null) {
      json[r'maxLength'] = this.maxLength;
    } else {
      json[r'maxLength'] = null;
    }
    if (this.minLength != null) {
      json[r'minLength'] = this.minLength;
    } else {
      json[r'minLength'] = null;
    }
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    if (this.propertyOrdering != null) {
      json[r'propertyOrdering'] = this.propertyOrdering;
    } else {
      json[r'propertyOrdering'] = null;
    }
    if (this.required_ != null) {
      json[r'required'] = this.required_;
    } else {
      json[r'required'] = null;
    }
    if (this.maxProperties != null) {
      json[r'maxProperties'] = this.maxProperties;
    } else {
      json[r'maxProperties'] = null;
    }
    if (this.minProperties != null) {
      json[r'minProperties'] = this.minProperties;
    } else {
      json[r'minProperties'] = null;
    }
    if (this.maximum != null) {
      json[r'maximum'] = this.maximum;
    } else {
      json[r'maximum'] = null;
    }
    if (this.minimum != null) {
      json[r'minimum'] = this.minimum;
    } else {
      json[r'minimum'] = null;
    }
    if (this.nullable != null) {
      json[r'nullable'] = this.nullable;
    } else {
      json[r'nullable'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [StructuredOutputSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StructuredOutputSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StructuredOutputSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StructuredOutputSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StructuredOutputSchema(
        anyOf: StructuredOutputSchema.listFromJson(json[r'anyOf']),
        default_: mapValueOfType<Object>(json, r'default'),
        description: mapValueOfType<String>(json, r'description'),
        enum_: json[r'enum'] is List
            ? (json[r'enum'] as List).cast<String>()
            : const [],
        example: mapValueOfType<Object>(json, r'example'),
        format: mapValueOfType<String>(json, r'format'),
        items: StructuredOutputSchema.fromJson(json[r'items']),
        maxItems: mapValueOfType<int>(json, r'maxItems'),
        minItems: mapValueOfType<int>(json, r'minItems'),
        maxLength: mapValueOfType<int>(json, r'maxLength'),
        minLength: mapValueOfType<int>(json, r'minLength'),
        pattern: mapValueOfType<String>(json, r'pattern'),
        properties: StructuredOutputSchema.mapFromJson(json[r'properties']),
        propertyOrdering: json[r'propertyOrdering'] is List
            ? (json[r'propertyOrdering'] as List).cast<String>()
            : const [],
        required_: json[r'required'] is List
            ? (json[r'required'] as List).cast<String>()
            : const [],
        maxProperties: mapValueOfType<int>(json, r'maxProperties'),
        minProperties: mapValueOfType<int>(json, r'minProperties'),
        maximum: json[r'maximum'] == null
            ? null
            : num.parse(json[r'maximum'].toString()),
        minimum: json[r'minimum'] == null
            ? null
            : num.parse(json[r'minimum'].toString()),
        nullable: mapValueOfType<bool>(json, r'nullable'),
        title: mapValueOfType<String>(json, r'title'),
        type: StructuredOutputSchemaTypeEnum.fromJson(json[r'type']),
      );
    }
    return null;
  }

  static List<StructuredOutputSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StructuredOutputSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StructuredOutputSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StructuredOutputSchema> mapFromJson(dynamic json) {
    final map = <String, StructuredOutputSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StructuredOutputSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StructuredOutputSchema-objects as value to a dart map
  static Map<String, List<StructuredOutputSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StructuredOutputSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StructuredOutputSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Primitive JSON schema types with a fallback CUSTOM for unknown values.
class StructuredOutputSchemaTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StructuredOutputSchemaTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const string = StructuredOutputSchemaTypeEnum._(r'string');
  static const number = StructuredOutputSchemaTypeEnum._(r'number');
  static const integer = StructuredOutputSchemaTypeEnum._(r'integer');
  static const boolean = StructuredOutputSchemaTypeEnum._(r'boolean');
  static const object = StructuredOutputSchemaTypeEnum._(r'object');
  static const array = StructuredOutputSchemaTypeEnum._(r'array');
  static const null_ = StructuredOutputSchemaTypeEnum._(r'null');

  /// List of all possible values in this [enum][StructuredOutputSchemaTypeEnum].
  static const values = <StructuredOutputSchemaTypeEnum>[
    string,
    number,
    integer,
    boolean,
    object,
    array,
    null_,
  ];

  static StructuredOutputSchemaTypeEnum? fromJson(dynamic value) => StructuredOutputSchemaTypeEnumTypeTransformer().decode(value);

  static List<StructuredOutputSchemaTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StructuredOutputSchemaTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StructuredOutputSchemaTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StructuredOutputSchemaTypeEnum] to String,
/// and [decode] dynamic data back to [StructuredOutputSchemaTypeEnum].
class StructuredOutputSchemaTypeEnumTypeTransformer {
  factory StructuredOutputSchemaTypeEnumTypeTransformer() => _instance ??= const StructuredOutputSchemaTypeEnumTypeTransformer._();

  const StructuredOutputSchemaTypeEnumTypeTransformer._();

  String encode(StructuredOutputSchemaTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StructuredOutputSchemaTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StructuredOutputSchemaTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'string': return StructuredOutputSchemaTypeEnum.string;
        case r'number': return StructuredOutputSchemaTypeEnum.number;
        case r'integer': return StructuredOutputSchemaTypeEnum.integer;
        case r'boolean': return StructuredOutputSchemaTypeEnum.boolean;
        case r'object': return StructuredOutputSchemaTypeEnum.object;
        case r'array': return StructuredOutputSchemaTypeEnum.array;
        case r'null': return StructuredOutputSchemaTypeEnum.null_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StructuredOutputSchemaTypeEnumTypeTransformer] instance.
  static StructuredOutputSchemaTypeEnumTypeTransformer? _instance;
}


