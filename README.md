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

 These classes also demonstrate some the syntax differences between the three options. 
 > [!NOTE]
 > The `BillableJs` does not have any data class features. This could be used e.g. in layered setup, where you hand data over to the API layer in an own class. It does not have to have equality and `copyWith`, all it cares about is being able to serialize and deserialize the class
 
The example then uses all the above classes in a `Retrofit` and `Chopper` codegen service configuration. This is just done to test and verify that the codegen works as expected in all three model cases.

The final result is that all three classes work with `Retrofit` and `Chopper` and the code is generated as expected. The generated code is included in the repo for reference.


