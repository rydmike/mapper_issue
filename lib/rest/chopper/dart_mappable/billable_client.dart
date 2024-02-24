// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:chopper/chopper.dart';

import '../../../models/billable_dm.dart';

part 'billable_client.chopper.dart';

@ChopperApi(baseUrl: '/api/billable')
abstract class BillableClient extends ChopperService {
  static BillableClient create([ChopperClient? client]) =>
      _$BillableClient(client);

  @Get(path: '/{id}/create')
  Future<Response<BillableDm>> getBillable({
    @Path() required int id,
  });

  @Post(path: '/api/billable/{id}/upsert')
  Future<Response<BillableDm>> upsertBillable({
    @Path() required int id,
    @Body() required BillableDm body,
  });

  @Delete(path: '/api/billable/{id}/delete')
  Future<Response<BillableDm>> deleteBillable({
    @Path() required int id,
  });
}
