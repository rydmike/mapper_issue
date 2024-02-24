// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billable_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BillableClient extends BillableClient {
  _$BillableClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BillableClient;

  @override
  Future<Response<BillableJs>> getBillable({required int id}) {
    final Uri $url = Uri.parse('/api/billable/${id}/create');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BillableJs, BillableJs>($request);
  }

  @override
  Future<Response<BillableJs>> upsertBillable({
    required int id,
    required BillableJs body,
  }) {
    final Uri $url = Uri.parse('/api/billable/api/billable/${id}/upsert');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillableJs, BillableJs>($request);
  }

  @override
  Future<Response<BillableJs>> deleteBillable({required int id}) {
    final Uri $url = Uri.parse('/api/billable/api/billable/${id}/delete');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<BillableJs, BillableJs>($request);
  }
}
