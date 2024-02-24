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
  Future<Response<BillableFr>> getBillable({required int id}) {
    final Uri $url = Uri.parse('/api/billable/${id}/create');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BillableFr, BillableFr>($request);
  }

  @override
  Future<Response<BillableFr>> upsertBillable({
    required int id,
    required BillableFr body,
  }) {
    final Uri $url = Uri.parse('/api/billable/api/billable/${id}/upsert');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BillableFr, BillableFr>($request);
  }

  @override
  Future<Response<BillableFr>> deleteBillable({required int id}) {
    final Uri $url = Uri.parse('/api/billable/api/billable/${id}/delete');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<BillableFr, BillableFr>($request);
  }
}
