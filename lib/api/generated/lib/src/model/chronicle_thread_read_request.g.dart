// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_thread_read_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleThreadReadRequest extends ChronicleThreadReadRequest {
  @override
  final int upToId;

  factory _$ChronicleThreadReadRequest(
          [void Function(ChronicleThreadReadRequestBuilder)? updates]) =>
      (ChronicleThreadReadRequestBuilder()..update(updates))._build();

  _$ChronicleThreadReadRequest._({required this.upToId}) : super._();
  @override
  ChronicleThreadReadRequest rebuild(
          void Function(ChronicleThreadReadRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChronicleThreadReadRequestBuilder toBuilder() =>
      ChronicleThreadReadRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleThreadReadRequest && upToId == other.upToId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, upToId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleThreadReadRequest')
          ..add('upToId', upToId))
        .toString();
  }
}

class ChronicleThreadReadRequestBuilder
    implements
        Builder<ChronicleThreadReadRequest, ChronicleThreadReadRequestBuilder> {
  _$ChronicleThreadReadRequest? _$v;

  int? _upToId;
  int? get upToId => _$this._upToId;
  set upToId(int? upToId) => _$this._upToId = upToId;

  ChronicleThreadReadRequestBuilder() {
    ChronicleThreadReadRequest._defaults(this);
  }

  ChronicleThreadReadRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _upToId = $v.upToId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleThreadReadRequest other) {
    _$v = other as _$ChronicleThreadReadRequest;
  }

  @override
  void update(void Function(ChronicleThreadReadRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleThreadReadRequest build() => _build();

  _$ChronicleThreadReadRequest _build() {
    final _$result = _$v ??
        _$ChronicleThreadReadRequest._(
          upToId: BuiltValueNullFieldError.checkNotNull(
              upToId, r'ChronicleThreadReadRequest', 'upToId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
