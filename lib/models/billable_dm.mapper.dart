// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'billable_dm.dart';

class BillableStatusMapper extends EnumMapper<BillableStatus> {
  BillableStatusMapper._();

  static BillableStatusMapper? _instance;
  static BillableStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BillableStatusMapper._());
    }
    return _instance!;
  }

  static BillableStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BillableStatus decode(dynamic value) {
    switch (value) {
      case 'NOT_BILLABLE':
        return BillableStatus.notBillable;
      case 'BILLABLE':
        return BillableStatus.billable;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BillableStatus self) {
    switch (self) {
      case BillableStatus.notBillable:
        return 'NOT_BILLABLE';
      case BillableStatus.billable:
        return 'BILLABLE';
    }
  }
}

extension BillableStatusMapperExtension on BillableStatus {
  dynamic toValue() {
    BillableStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BillableStatus>(this);
  }
}

class BillableDmMapper extends ClassMapperBase<BillableDm> {
  BillableDmMapper._();

  static BillableDmMapper? _instance;
  static BillableDmMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BillableDmMapper._());
      BillableStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BillableDm';

  static int _$id(BillableDm v) => v.id;
  static const Field<BillableDm, int> _f$id = Field('id', _$id);
  static DateTime _$createdDate(BillableDm v) => v.createdDate;
  static const Field<BillableDm, DateTime> _f$createdDate =
      Field('createdDate', _$createdDate, key: 'created_date');
  static BillableStatus _$status(BillableDm v) => v.status;
  static const Field<BillableDm, BillableStatus> _f$status =
      Field('status', _$status, opt: true, def: BillableStatus.billable);
  static DateTime? _$dueDate(BillableDm v) => v.dueDate;
  static const Field<BillableDm, DateTime> _f$dueDate =
      Field('dueDate', _$dueDate, key: 'due_date', opt: true);
  static String _$comment(BillableDm v) => v.comment;
  static const Field<BillableDm, String> _f$comment =
      Field('comment', _$comment, opt: true, def: '');

  @override
  final MappableFields<BillableDm> fields = const {
    #id: _f$id,
    #createdDate: _f$createdDate,
    #status: _f$status,
    #dueDate: _f$dueDate,
    #comment: _f$comment,
  };

  static BillableDm _instantiate(DecodingData data) {
    return BillableDm(
        id: data.dec(_f$id),
        createdDate: data.dec(_f$createdDate),
        status: data.dec(_f$status),
        dueDate: data.dec(_f$dueDate),
        comment: data.dec(_f$comment));
  }

  @override
  final Function instantiate = _instantiate;

  static BillableDm fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BillableDm>(map);
  }

  static BillableDm deserialize(String json) {
    return ensureInitialized().decodeJson<BillableDm>(json);
  }
}

mixin BillableDmMappable {
  String serialize() {
    return BillableDmMapper.ensureInitialized()
        .encodeJson<BillableDm>(this as BillableDm);
  }

  Map<String, dynamic> toJson() {
    return BillableDmMapper.ensureInitialized()
        .encodeMap<BillableDm>(this as BillableDm);
  }

  BillableDmCopyWith<BillableDm, BillableDm, BillableDm> get copyWith =>
      _BillableDmCopyWithImpl(this as BillableDm, $identity, $identity);
  @override
  String toString() {
    return BillableDmMapper.ensureInitialized()
        .stringifyValue(this as BillableDm);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            BillableDmMapper.ensureInitialized()
                .isValueEqual(this as BillableDm, other));
  }

  @override
  int get hashCode {
    return BillableDmMapper.ensureInitialized().hashValue(this as BillableDm);
  }
}

extension BillableDmValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BillableDm, $Out> {
  BillableDmCopyWith<$R, BillableDm, $Out> get $asBillableDm =>
      $base.as((v, t, t2) => _BillableDmCopyWithImpl(v, t, t2));
}

abstract class BillableDmCopyWith<$R, $In extends BillableDm, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      DateTime? createdDate,
      BillableStatus? status,
      DateTime? dueDate,
      String? comment});
  BillableDmCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BillableDmCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BillableDm, $Out>
    implements BillableDmCopyWith<$R, BillableDm, $Out> {
  _BillableDmCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BillableDm> $mapper =
      BillableDmMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          DateTime? createdDate,
          BillableStatus? status,
          Object? dueDate = $none,
          String? comment}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (createdDate != null) #createdDate: createdDate,
        if (status != null) #status: status,
        if (dueDate != $none) #dueDate: dueDate,
        if (comment != null) #comment: comment
      }));
  @override
  BillableDm $make(CopyWithData data) => BillableDm(
      id: data.get(#id, or: $value.id),
      createdDate: data.get(#createdDate, or: $value.createdDate),
      status: data.get(#status, or: $value.status),
      dueDate: data.get(#dueDate, or: $value.dueDate),
      comment: data.get(#comment, or: $value.comment));

  @override
  BillableDmCopyWith<$R2, BillableDm, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BillableDmCopyWithImpl($value, $cast, t);
}
