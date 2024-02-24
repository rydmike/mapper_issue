// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'billable_fr.freezed.dart';
part 'billable_fr.g.dart';

/// BillableFr is made with Freezed and JsonSerializable codegen.
@freezed
class BillableFr with _$BillableFr {
  const factory BillableFr({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'created_date') required DateTime createdDate,
    @JsonKey(name: 'state')
    @Default(BillableStatus.billable)
    BillableStatus status,
    @JsonKey(name: 'due_date') DateTime? dateDate,
    @JsonKey(name: 'comment') @Default('') String comment,
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
