// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_context_near.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlertContextNear extends AlertContextNear {
  @override
  final BuiltList<String>? placeIds;
  @override
  final BuiltList<int>? placeVersions;

  factory _$AlertContextNear(
          [void Function(AlertContextNearBuilder)? updates]) =>
      (AlertContextNearBuilder()..update(updates))._build();

  _$AlertContextNear._({this.placeIds, this.placeVersions}) : super._();
  @override
  AlertContextNear rebuild(void Function(AlertContextNearBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertContextNearBuilder toBuilder() =>
      AlertContextNearBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertContextNear &&
        placeIds == other.placeIds &&
        placeVersions == other.placeVersions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeIds.hashCode);
    _$hash = $jc(_$hash, placeVersions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertContextNear')
          ..add('placeIds', placeIds)
          ..add('placeVersions', placeVersions))
        .toString();
  }
}

class AlertContextNearBuilder
    implements Builder<AlertContextNear, AlertContextNearBuilder> {
  _$AlertContextNear? _$v;

  ListBuilder<String>? _placeIds;
  ListBuilder<String> get placeIds =>
      _$this._placeIds ??= ListBuilder<String>();
  set placeIds(ListBuilder<String>? placeIds) => _$this._placeIds = placeIds;

  ListBuilder<int>? _placeVersions;
  ListBuilder<int> get placeVersions =>
      _$this._placeVersions ??= ListBuilder<int>();
  set placeVersions(ListBuilder<int>? placeVersions) =>
      _$this._placeVersions = placeVersions;

  AlertContextNearBuilder() {
    AlertContextNear._defaults(this);
  }

  AlertContextNearBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeIds = $v.placeIds?.toBuilder();
      _placeVersions = $v.placeVersions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertContextNear other) {
    _$v = other as _$AlertContextNear;
  }

  @override
  void update(void Function(AlertContextNearBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertContextNear build() => _build();

  _$AlertContextNear _build() {
    _$AlertContextNear _$result;
    try {
      _$result = _$v ??
          _$AlertContextNear._(
            placeIds: _placeIds?.build(),
            placeVersions: _placeVersions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'placeIds';
        _placeIds?.build();
        _$failedField = 'placeVersions';
        _placeVersions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlertContextNear', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
