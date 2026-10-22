// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingest_key_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IngestKeyResponse extends IngestKeyResponse {
  @override
  final String ingestKey;

  factory _$IngestKeyResponse([
    void Function(IngestKeyResponseBuilder)? updates,
  ]) => (IngestKeyResponseBuilder()..update(updates))._build();

  _$IngestKeyResponse._({required this.ingestKey}) : super._();
  @override
  IngestKeyResponse rebuild(void Function(IngestKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngestKeyResponseBuilder toBuilder() =>
      IngestKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngestKeyResponse && ingestKey == other.ingestKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ingestKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'IngestKeyResponse',
    )..add('ingestKey', ingestKey)).toString();
  }
}

class IngestKeyResponseBuilder
    implements Builder<IngestKeyResponse, IngestKeyResponseBuilder> {
  _$IngestKeyResponse? _$v;

  String? _ingestKey;
  String? get ingestKey => _$this._ingestKey;
  set ingestKey(String? ingestKey) => _$this._ingestKey = ingestKey;

  IngestKeyResponseBuilder() {
    IngestKeyResponse._defaults(this);
  }

  IngestKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ingestKey = $v.ingestKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngestKeyResponse other) {
    _$v = other as _$IngestKeyResponse;
  }

  @override
  void update(void Function(IngestKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngestKeyResponse build() => _build();

  _$IngestKeyResponse _build() {
    final _$result =
        _$v ??
        _$IngestKeyResponse._(
          ingestKey: BuiltValueNullFieldError.checkNotNull(
            ingestKey,
            r'IngestKeyResponse',
            'ingestKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
