// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronicle_link_found_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChronicleLinkFoundEvent extends ChronicleLinkFoundEvent {
  @override
  final String chronicleId;
  @override
  final ChronicleRelatedPageItemsInner link;
  @override
  final DateTime at;

  factory _$ChronicleLinkFoundEvent([
    void Function(ChronicleLinkFoundEventBuilder)? updates,
  ]) => (ChronicleLinkFoundEventBuilder()..update(updates))._build();

  _$ChronicleLinkFoundEvent._({
    required this.chronicleId,
    required this.link,
    required this.at,
  }) : super._();
  @override
  ChronicleLinkFoundEvent rebuild(
    void Function(ChronicleLinkFoundEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChronicleLinkFoundEventBuilder toBuilder() =>
      ChronicleLinkFoundEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChronicleLinkFoundEvent &&
        chronicleId == other.chronicleId &&
        link == other.link &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chronicleId.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChronicleLinkFoundEvent')
          ..add('chronicleId', chronicleId)
          ..add('link', link)
          ..add('at', at))
        .toString();
  }
}

class ChronicleLinkFoundEventBuilder
    implements
        Builder<ChronicleLinkFoundEvent, ChronicleLinkFoundEventBuilder> {
  _$ChronicleLinkFoundEvent? _$v;

  String? _chronicleId;
  String? get chronicleId => _$this._chronicleId;
  set chronicleId(String? chronicleId) => _$this._chronicleId = chronicleId;

  ChronicleRelatedPageItemsInnerBuilder? _link;
  ChronicleRelatedPageItemsInnerBuilder get link =>
      _$this._link ??= ChronicleRelatedPageItemsInnerBuilder();
  set link(ChronicleRelatedPageItemsInnerBuilder? link) => _$this._link = link;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  ChronicleLinkFoundEventBuilder() {
    ChronicleLinkFoundEvent._defaults(this);
  }

  ChronicleLinkFoundEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chronicleId = $v.chronicleId;
      _link = $v.link.toBuilder();
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChronicleLinkFoundEvent other) {
    _$v = other as _$ChronicleLinkFoundEvent;
  }

  @override
  void update(void Function(ChronicleLinkFoundEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChronicleLinkFoundEvent build() => _build();

  _$ChronicleLinkFoundEvent _build() {
    _$ChronicleLinkFoundEvent _$result;
    try {
      _$result =
          _$v ??
          _$ChronicleLinkFoundEvent._(
            chronicleId: BuiltValueNullFieldError.checkNotNull(
              chronicleId,
              r'ChronicleLinkFoundEvent',
              'chronicleId',
            ),
            link: link.build(),
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'ChronicleLinkFoundEvent',
              'at',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'link';
        link.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ChronicleLinkFoundEvent',
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
