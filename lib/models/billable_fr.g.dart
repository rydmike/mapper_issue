// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billable_fr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillableFrImpl _$$BillableFrImplFromJson(Map<String, dynamic> json) =>
    _$BillableFrImpl(
      id: json['id'] as int,
      createdDate: DateTime.parse(json['created_date'] as String),
      status: $enumDecodeNullable(_$BillableStatusEnumMap, json['status']) ??
          BillableStatus.billable,
      dateDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$BillableFrImplToJson(_$BillableFrImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate.toIso8601String(),
      'status': _$BillableStatusEnumMap[instance.status]!,
      'due_date': instance.dateDate?.toIso8601String(),
      'comment': instance.comment,
    };

const _$BillableStatusEnumMap = {
  BillableStatus.notBillable: 'NOT_BILLABLE',
  BillableStatus.billable: 'BILLABLE',
};
