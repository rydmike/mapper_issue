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
