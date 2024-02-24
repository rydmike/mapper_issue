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
