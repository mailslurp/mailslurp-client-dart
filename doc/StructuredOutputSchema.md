# mailslurp.model.StructuredOutputSchema

## Load the model package
```dart
import 'package:mailslurp/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**anyOf** | [**List<StructuredOutputSchema>**](StructuredOutputSchema) |  | [optional] [default to const []]
**default_** | [**Object**]() |  | [optional] 
**description** | **String** | Provide a description of the schema to help the AI understand the schema. | [optional] 
**enum_** | **List<String>** | When using type string and format enum pass a collection of enum values here. | [optional] [default to const []]
**example** | [**Object**]() |  | [optional] 
**format** | **String** | Format for string types. Can be null, date-time or enum. | [optional] 
**items** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**maxItems** | **int** |  | [optional] 
**minItems** | **int** |  | [optional] 
**maxLength** | **int** |  | [optional] 
**minLength** | **int** |  | [optional] 
**pattern** | **String** |  | [optional] 
**properties** | [**Map<String, StructuredOutputSchema>**](StructuredOutputSchema) | Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property. | [optional] [default to const {}]
**propertyOrdering** | **List<String>** | Pass an array of property names to specify the order of properties in the generated JSON object if required. | [optional] [default to const []]
**required_** | **List<String>** |  | [optional] [default to const []]
**maxProperties** | **int** |  | [optional] 
**minProperties** | **int** |  | [optional] 
**maximum** | **num** |  | [optional] 
**minimum** | **num** |  | [optional] 
**nullable** | **bool** |  | [optional] 
**title** | **String** |  | [optional] 
**type** | **String** | Primitive JSON schema types with a fallback CUSTOM for unknown values. | [optional] 

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)


