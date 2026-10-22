// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_batch_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SampleBatchResponse extends SampleBatchResponse {
  @override
  final BuiltList<SampleResponse> items;
  @override
  final DateTime serverTime;

  factory _$SampleBatchResponse(
          [void Function(SampleBatchResponseBuilder)? updates]) =>
      (SampleBatchResponseBuilder()..update(updates))._build();

  _$SampleBatchResponse._({required this.items, required this.serverTime})
      : super._();
  @override
  SampleBatchResponse rebuild(
          void Function(SampleBatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SampleBatchResponseBuilder toBuilder() =>
      SampleBatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SampleBatchResponse &&
        items == other.items &&
        serverTime == other.serverTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, serverTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SampleBatchResponse')
          ..add('items', items)
          ..add('serverTime', serverTime))
        .toString();
  }
}

class SampleBatchResponseBuilder
    implements Builder<SampleBatchResponse, SampleBatchResponseBuilder> {
  _$SampleBatchResponse? _$v;

  ListBuilder<SampleResponse>? _items;
  ListBuilder<SampleResponse> get items =>
      _$this._items ??= ListBuilder<SampleResponse>();
  set items(ListBuilder<SampleResponse>? items) => _$this._items = items;

  DateTime? _serverTime;
  DateTime? get serverTime => _$this._serverTime;
  set serverTime(DateTime? serverTime) => _$this._serverTime = serverTime;

  SampleBatchResponseBuilder() {
    SampleBatchResponse._defaults(this);
  }

  SampleBatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _serverTime = $v.serverTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SampleBatchResponse other) {
    _$v = other as _$SampleBatchResponse;
  }

  @override
  void update(void Function(SampleBatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SampleBatchResponse build() => _build();

  _$SampleBatchResponse _build() {
    _$SampleBatchResponse _$result;
    try {
      _$result = _$v ??
          _$SampleBatchResponse._(
            items: items.build(),
            serverTime: BuiltValueNullFieldError.checkNotNull(
                serverTime, r'SampleBatchResponse', 'serverTime'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SampleBatchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
