// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billable_fr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillableFr _$BillableFrFromJson(Map<String, dynamic> json) {
  return _BillableFr.fromJson(json);
}

/// @nodoc
mixin _$BillableFr {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  DateTime get createdDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  BillableStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get dateDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillableFrCopyWith<BillableFr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillableFrCopyWith<$Res> {
  factory $BillableFrCopyWith(
          BillableFr value, $Res Function(BillableFr) then) =
      _$BillableFrCopyWithImpl<$Res, BillableFr>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_date') DateTime createdDate,
      @JsonKey(name: 'state') BillableStatus status,
      @JsonKey(name: 'due_date') DateTime? dateDate,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class _$BillableFrCopyWithImpl<$Res, $Val extends BillableFr>
    implements $BillableFrCopyWith<$Res> {
  _$BillableFrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? status = null,
    Object? dateDate = freezed,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillableStatus,
      dateDate: freezed == dateDate
          ? _value.dateDate
          : dateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillableFrImplCopyWith<$Res>
    implements $BillableFrCopyWith<$Res> {
  factory _$$BillableFrImplCopyWith(
          _$BillableFrImpl value, $Res Function(_$BillableFrImpl) then) =
      __$$BillableFrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_date') DateTime createdDate,
      @JsonKey(name: 'state') BillableStatus status,
      @JsonKey(name: 'due_date') DateTime? dateDate,
      @JsonKey(name: 'comment') String comment});
}

/// @nodoc
class __$$BillableFrImplCopyWithImpl<$Res>
    extends _$BillableFrCopyWithImpl<$Res, _$BillableFrImpl>
    implements _$$BillableFrImplCopyWith<$Res> {
  __$$BillableFrImplCopyWithImpl(
      _$BillableFrImpl _value, $Res Function(_$BillableFrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? status = null,
    Object? dateDate = freezed,
    Object? comment = null,
  }) {
    return _then(_$BillableFrImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillableStatus,
      dateDate: freezed == dateDate
          ? _value.dateDate
          : dateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillableFrImpl implements _BillableFr {
  const _$BillableFrImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_date') required this.createdDate,
      @JsonKey(name: 'state') this.status = BillableStatus.billable,
      @JsonKey(name: 'due_date') this.dateDate,
      @JsonKey(name: 'comment') this.comment = ''});

  factory _$BillableFrImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillableFrImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'created_date')
  final DateTime createdDate;
  @override
  @JsonKey(name: 'state')
  final BillableStatus status;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? dateDate;
  @override
  @JsonKey(name: 'comment')
  final String comment;

  @override
  String toString() {
    return 'BillableFr(id: $id, createdDate: $createdDate, status: $status, dateDate: $dateDate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillableFrImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateDate, dateDate) ||
                other.dateDate == dateDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdDate, status, dateDate, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillableFrImplCopyWith<_$BillableFrImpl> get copyWith =>
      __$$BillableFrImplCopyWithImpl<_$BillableFrImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillableFrImplToJson(
      this,
    );
  }
}

abstract class _BillableFr implements BillableFr {
  const factory _BillableFr(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'created_date') required final DateTime createdDate,
      @JsonKey(name: 'state') final BillableStatus status,
      @JsonKey(name: 'due_date') final DateTime? dateDate,
      @JsonKey(name: 'comment') final String comment}) = _$BillableFrImpl;

  factory _BillableFr.fromJson(Map<String, dynamic> json) =
      _$BillableFrImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'created_date')
  DateTime get createdDate;
  @override
  @JsonKey(name: 'state')
  BillableStatus get status;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get dateDate;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$BillableFrImplCopyWith<_$BillableFrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
