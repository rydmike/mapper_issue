// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/billable_fr.dart';

part 'billable_client.g.dart';

@RestApi()
abstract class BillableClient {
  factory BillableClient(Dio dio, {String? baseUrl}) = _BillableClient;

  @GET('/api/billable/{id}/create')
  Future<BillableFr> getBillable({
    @Path('id') required int id,
    @Body() required BillableFr body,
  });

  @POST('/api/billable/{id}/upsert')
  Future<BillableFr> upsertBillable({
    @Path('id') required int id,
    @Body() required BillableFr body,
  });

  @DELETE('/api/billable/{id}/delete')
  Future<BillableFr> deleteBillable({
    @Path('id') required int id,
  });
}
