// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'propagation_graph_first_news_pickup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropagationGraphFirstNewsPickup
    extends PropagationGraphFirstNewsPickup {
  @override
  final String storyId;
  @override
  final String? articleRef;
  @override
  final DateTime observedAt;
  @override
  final num? afterFirstPostSeconds;

  factory _$PropagationGraphFirstNewsPickup(
          [void Function(PropagationGraphFirstNewsPickupBuilder)? updates]) =>
      (PropagationGraphFirstNewsPickupBuilder()..update(updates))._build();

  _$PropagationGraphFirstNewsPickup._(
      {required this.storyId,
      this.articleRef,
      required this.observedAt,
      this.afterFirstPostSeconds})
      : super._();
  @override
  PropagationGraphFirstNewsPickup rebuild(
          void Function(PropagationGraphFirstNewsPickupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropagationGraphFirstNewsPickupBuilder toBuilder() =>
      PropagationGraphFirstNewsPickupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropagationGraphFirstNewsPickup &&
        storyId == other.storyId &&
        articleRef == other.articleRef &&
        observedAt == other.observedAt &&
        afterFirstPostSeconds == other.afterFirstPostSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, storyId.hashCode);
    _$hash = $jc(_$hash, articleRef.hashCode);
    _$hash = $jc(_$hash, observedAt.hashCode);
    _$hash = $jc(_$hash, afterFirstPostSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropagationGraphFirstNewsPickup')
          ..add('storyId', storyId)
          ..add('articleRef', articleRef)
          ..add('observedAt', observedAt)
          ..add('afterFirstPostSeconds', afterFirstPostSeconds))
        .toString();
  }
}

class PropagationGraphFirstNewsPickupBuilder
    implements
        Builder<PropagationGraphFirstNewsPickup,
            PropagationGraphFirstNewsPickupBuilder> {
  _$PropagationGraphFirstNewsPickup? _$v;

  String? _storyId;
  String? get storyId => _$this._storyId;
  set storyId(String? storyId) => _$this._storyId = storyId;

  String? _articleRef;
  String? get articleRef => _$this._articleRef;
  set articleRef(String? articleRef) => _$this._articleRef = articleRef;

  DateTime? _observedAt;
  DateTime? get observedAt => _$this._observedAt;
  set observedAt(DateTime? observedAt) => _$this._observedAt = observedAt;

  num? _afterFirstPostSeconds;
  num? get afterFirstPostSeconds => _$this._afterFirstPostSeconds;
  set afterFirstPostSeconds(num? afterFirstPostSeconds) =>
      _$this._afterFirstPostSeconds = afterFirstPostSeconds;

  PropagationGraphFirstNewsPickupBuilder() {
    PropagationGraphFirstNewsPickup._defaults(this);
  }

  PropagationGraphFirstNewsPickupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storyId = $v.storyId;
      _articleRef = $v.articleRef;
      _observedAt = $v.observedAt;
      _afterFirstPostSeconds = $v.afterFirstPostSeconds;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropagationGraphFirstNewsPickup other) {
    _$v = other as _$PropagationGraphFirstNewsPickup;
  }

  @override
  void update(void Function(PropagationGraphFirstNewsPickupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropagationGraphFirstNewsPickup build() => _build();

  _$PropagationGraphFirstNewsPickup _build() {
    final _$result = _$v ??
        _$PropagationGraphFirstNewsPickup._(
          storyId: BuiltValueNullFieldError.checkNotNull(
              storyId, r'PropagationGraphFirstNewsPickup', 'storyId'),
          articleRef: articleRef,
          observedAt: BuiltValueNullFieldError.checkNotNull(
              observedAt, r'PropagationGraphFirstNewsPickup', 'observedAt'),
          afterFirstPostSeconds: afterFirstPostSeconds,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
