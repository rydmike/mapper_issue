# Dart Mappable with Retrofit and Chopper


This repo tests package `dart_mappable` compatibility with packages `retrofit` and `chopper`.

I was having some problems getting `dart_mappable` to work with `Retrofit` and `Chopper`, so I decided to create this repo to test it.

The problem was that `Retrofit` and `Chopper` use `json_serializable` syntax to generate the code for the models, and `dart_mappable` has its own idea of how to map models and serialize them. Arguable `dart_mappable`s way is semantically more correct, but it goes against the convention that is established by `json_serializable`. 

The `dart_mappable` package can be configured to produce methods that are compatible with `json_serializable` so it can be used with packages like `Retrofit` and `Chopper`.

For everything to work, and this also applies to when using `freezed`, you have to configure what should be built in what order in the `build.yaml` file, for all the dependencies to always work out. I ended up using the following configuration:

```yaml
global_options:
  freezed:
    runs_before:
      - json_serializable
      - retrofit_generator
      - chopper_generator
  json_serializable:
    runs_before:
      - retrofit_generator
      - chopper_generator
  dart_mappable_builder:
    runs_before:
      - retrofit_generator
      - chopper_generator
    options:
      caseStyle: snakeCase # fits the target imaginary API
      ignoreNull: false
      discriminatorKey: type
      generateMethods: [decode, encode, copy, stringify, equals]
      # Use the rename options feature to make the generated code 
      #compatible with retrofit and chopper
      renameMethods:
        fromJson: deserialize
        toJson: serialize
        fromMap: fromJson
        toMap: toJson
```

This example contains three fictive model classes:

- `BillableJs` made with only `JsonSerializable`
- `BillableFr` made with `Freezed` and `JsonSerializable`
- `BillableDm` made with `DartMappable`

 These classes also demonstrate the syntax differences between the three options. 

## Dart Mappable example

Personally I like the look of `dart_mappable` most since it imo is the one closest resembling just vanilla Dart code. It also has great support for generics, polymorphism and multi-inheritance.


```dart
import 'package:dart_mappable/dart_mappable.dart';
part 'billable_dm.mapper.dart';
/// BillableDm is made with Dart Mappable codegen.
@MappableClass()
class BillableDm with BillableDmMappable {
  
 BillableDm({
  required this.id,
  required this.createdDate,
  this.status = BillableStatus.billable,
  this.dueDate,
  this.comment = '',
 });
 
 final int id;
 final DateTime createdDate;
 final BillableStatus status;
 final DateTime? dueDate;
 final String comment;

 factory BillableDm.fromJson(Map<String, dynamic> json) =>
         BillableDmMapper.fromJson(json);
}
/// Valid JSON values are: 'NOT_BILLABLE', 'BILLABLE'.
@MappableEnum()
enum BillableStatus {
 @MappableValue('NOT_BILLABLE')
 notBillable,
 @MappableValue('BILLABLE')
 billable,
}
```


### Freezed + Json Serializable example

Freezed has a compact syntax, which is nice in that it is short. However, I find it very alien, in the way that it does not look like Dart code. I find the `_$` things impossible to remember what goes where, I always have to look it up.

```dart
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'billable_fr.freezed.dart';
part 'billable_fr.g.dart';
/// BillableFr is made with Freezed and JsonSerializable codegen.
@freezed
class BillableFr with _$BillableFr {
  
 const factory BillableFr({
  required int id,
  @JsonKey(name: 'created_date') required DateTime createdDate,
  @Default(BillableStatus.billable) BillableStatus status,
  @JsonKey(name: 'due_date') DateTime? dateDate,
  @Default('') String comment,
 }) = _BillableFr;

 factory BillableFr.fromJson(Map<String, dynamic> json) =>
         _$BillableFrFromJson(json);
}
/// Valid JSON values are: 'NOT_BILLABLE', 'BILLABLE'.
enum BillableStatus {
 @JsonValue('NOT_BILLABLE')
 notBillable,
 @JsonValue('BILLABLE')
 billable,
}
```

## Json Serializable example

The `json_serializable` example syntax is not so bad, other than again the `_$` things on the `toJson` and `fromJson` methods. They again look meh, and I can't be bothered to remember them.


```dart 

> [!NOTE]
> The `BillableJs` does not have any data class features. This could be used e.g. in layered setup, where you hand data over to the API layer in an own class. It does not have to have equality and `copyWith`, all it cares about is being able to serialize and deserialize the class


```dart
import 'package:json_annotation/json_annotation.dart';
part 'billable_js.g.dart';
/// BillableJs is made with only JsonSerializable codegen.
@JsonSerializable()
class BillableJs {
  
  BillableJs({
    required this.id,
    required this.createdDate,
    this.status = BillableStatus.billable,
    this.dueDate,
    this.comment = '',
  });
  
  final int id;
  @JsonKey(name: 'created_date')
  final DateTime createdDate;
  final BillableStatus status;
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  final String comment;

  factory BillableJs.fromJson(Map<String, Object?> json) =>
      _$BillableJsFromJson(json);

  Map<String, Object?> toJson() => _$BillableJsToJson(this);
}

/// Valid JSON values are: 'NOT_BILLABLE', 'BILLABLE'.
enum BillableStatus {
  @JsonValue('NOT_BILLABLE')
  notBillable,
  @JsonValue('BILLABLE')
  billable,
}

```



## Result

The example uses all the above classes in a `Retrofit` and `Chopper` codegen service configuration. This is just done to test and verify that the codegen works as expected with all three model cases.

The final result is that all three classes work with `Retrofit` and `Chopper` and the code is generated as expected. The generated code is included in the repo for reference.


