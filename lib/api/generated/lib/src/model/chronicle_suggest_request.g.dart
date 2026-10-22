// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_suggest_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleSuggestRequest extends ChronicleSuggestRequest {
  @override
  final String? situationId;
  @override
  final ChronicleArea? area;
  @override
  final String? topic;

  factory _$ChronicleSuggestRequest([
    void Function(ChronicleSuggestRequestBuilder)? updates,
  ]) => (ChronicleSuggestRequestBuilder()..update(updates))._build();

  _$ChronicleSuggestRequest._({this.situationId, this.area, this.topic})
    : super._();
  @override
  ChronicleSuggestRequest rebuild(
    void Function(ChronicleSuggestRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleSuggestRequestBuilder toBuilder() =>
      ChronicleSuggestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleSuggestRequest &&
        situationId == other.situationId &&
        area == other.area &&
        topic == other.topic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, situationId.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, topic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleSuggestRequest')
          ..add('situationId', situationId)
          ..add('area', area)
          ..add('topic', topic))
        .toString();
  }
}

class ChronicleSuggestRequestBuilder
    implements
        Builder<ChronicleSuggestRequest, ChronicleSuggestRequestBuilder> {
  _$ChronicleSuggestRequest? _$v;

  String? _situationId;
  String? get situationId => _$this._situationId;
  set situationId(String? situationId) => _$this._situationId = situationId;

  ChronicleAreaBuilder? _area;
  ChronicleAreaBuilder get area => _$this._area ??= ChronicleAreaBuilder();
  set area(ChronicleAreaBuilder? area) => _$this._area = area;

  String? _topic;
  String? get topic => _$this._topic;
  set topic(String? topic) => _$this._topic = topic;

  ChronicleSuggestRequestBuilder() {
    ChronicleSuggestRequest._defaults(this);
  }

  ChronicleSuggestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _situationId = $v.situationId;
      _area = $v.area?.toBuilder();
      _topic = $v.topic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleSuggestRequest other) {
    _$v = other as _$ChronicleSuggestRequest;
  }

  @override
  void update(void Function(ChronicleSuggestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleSuggestRequest build() => _build();

  _$ChronicleSuggestRequest _build() {
    _$ChronicleSuggestRequest _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleSuggestRequest._(
            situationId: situationId,
            area: _area?.build(),
            topic: topic,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleSuggestRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
