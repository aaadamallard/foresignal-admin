// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlook_published_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OutlookPublishedEvent extends OutlookPublishedEvent {
  @override
  final String region;
  @override
  final String family;
  @override
  final DateTime publishedAt;
  @override
  final BuiltList<OutlookWindow>? windows;
  @override
  final String? recordRef;

  factory _$OutlookPublishedEvent([
    void Function(OutlookPublishedEventBuilder)? updates,
  ]) => (OutlookPublishedEventBuilder()..update(updates))._build();

  _$OutlookPublishedEvent._({
    required this.region,
    required this.family,
    required this.publishedAt,
    this.windows,
    this.recordRef,
  }) : super._();
  @override
  OutlookPublishedEvent rebuild(
    void Function(OutlookPublishedEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OutlookPublishedEventBuilder toBuilder() =>
      OutlookPublishedEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OutlookPublishedEvent &&
        region == other.region &&
        family == other.family &&
        publishedAt == other.publishedAt &&
        windows == other.windows &&
        recordRef == other.recordRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, family.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, windows.hashCode);
    _$hash = $jc(_$hash, recordRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OutlookPublishedEvent')
          ..add('region', region)
          ..add('family', family)
          ..add('publishedAt', publishedAt)
          ..add('windows', windows)
          ..add('recordRef', recordRef))
        .toString();
  }
}

class OutlookPublishedEventBuilder
    implements Builder<OutlookPublishedEvent, OutlookPublishedEventBuilder> {
  _$OutlookPublishedEvent? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _family;
  String? get family => _$this._family;
  set family(String? family) => _$this._family = family;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  ListBuilder<OutlookWindow>? _windows;
  ListBuilder<OutlookWindow> get windows =>
      _$this._windows ??= ListBuilder<OutlookWindow>();
  set windows(ListBuilder<OutlookWindow>? windows) => _$this._windows = windows;

  String? _recordRef;
  String? get recordRef => _$this._recordRef;
  set recordRef(String? recordRef) => _$this._recordRef = recordRef;

  OutlookPublishedEventBuilder() {
    OutlookPublishedEvent._defaults(this);
  }

  OutlookPublishedEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _family = $v.family;
      _publishedAt = $v.publishedAt;
      _windows = $v.windows?.toBuilder();
      _recordRef = $v.recordRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OutlookPublishedEvent other) {
    _$v = other as _$OutlookPublishedEvent;
  }

  @override
  void update(void Function(OutlookPublishedEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OutlookPublishedEvent build() => _build();

  _$OutlookPublishedEvent _build() {
    _$OutlookPublishedEvent _$result;
    try {
      _$result =
          _$v ??
          _$OutlookPublishedEvent._(
            region: BuiltValueNullFieldError.checkNotNull(
              region,
              r'OutlookPublishedEvent',
              'region',
            ),
            family: BuiltValueNullFieldError.checkNotNull(
              family,
              r'OutlookPublishedEvent',
              'family',
            ),
            publishedAt: BuiltValueNullFieldError.checkNotNull(
              publishedAt,
              r'OutlookPublishedEvent',
              'publishedAt',
            ),
            windows: _windows?.build(),
            recordRef: recordRef,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'windows';
        _windows?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OutlookPublishedEvent',
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
