// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billable_js.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillableJs _$BillableJsFromJson(Map<String, dynamic> json) => BillableJs(
      id: json['id'] as int,
      createdDate: DateTime.parse(json['created_date'] as String),
      status: $enumDecodeNullable(_$BillableStatusEnumMap, json['status']) ??
          BillableStatus.billable,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$BillableJsToJson(BillableJs instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate.toIso8601String(),
      'status': _$BillableStatusEnumMap[instance.status]!,
      'due_date': instance.dueDate?.toIso8601String(),
      'comment': instance.comment,
    };

const _$BillableStatusEnumMap = {
  BillableStatus.notBillable: 'NOT_BILLABLE',
  BillableStatus.billable: 'BILLABLE',
};
