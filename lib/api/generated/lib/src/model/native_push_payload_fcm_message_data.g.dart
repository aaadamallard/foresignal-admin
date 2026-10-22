// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_push_payload_fcm_message_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NativePushPayloadFcmMessageData
    extends NativePushPayloadFcmMessageData {
  @override
  final String? v;
  @override
  final String? id;
  @override
  final String? a;
  @override
  final String? s;
  @override
  final String? ev;
  @override
  final String? l;
  @override
  final String? t;
  @override
  final String? c;

  factory _$NativePushPayloadFcmMessageData([
    void Function(NativePushPayloadFcmMessageDataBuilder)? updates,
  ]) => (NativePushPayloadFcmMessageDataBuilder()..update(updates))._build();

  _$NativePushPayloadFcmMessageData._({
    this.v,
    this.id,
    this.a,
    this.s,
    this.ev,
    this.l,
    this.t,
    this.c,
  }) : super._();
  @override
  NativePushPayloadFcmMessageData rebuild(
    void Function(NativePushPayloadFcmMessageDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NativePushPayloadFcmMessageDataBuilder toBuilder() =>
      NativePushPayloadFcmMessageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NativePushPayloadFcmMessageData &&
        v == other.v &&
        id == other.id &&
        a == other.a &&
        s == other.s &&
        ev == other.ev &&
        l == other.l &&
        t == other.t &&
        c == other.c;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, v.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, a.hashCode);
    _$hash = $jc(_$hash, s.hashCode);
    _$hash = $jc(_$hash, ev.hashCode);
    _$hash = $jc(_$hash, l.hashCode);
    _$hash = $jc(_$hash, t.hashCode);
    _$hash = $jc(_$hash, c.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NativePushPayloadFcmMessageData')
          ..add('v', v)
          ..add('id', id)
          ..add('a', a)
          ..add('s', s)
          ..add('ev', ev)
          ..add('l', l)
          ..add('t', t)
          ..add('c', c))
        .toString();
  }
}

class NativePushPayloadFcmMessageDataBuilder
    implements
        Builder<
          NativePushPayloadFcmMessageData,
          NativePushPayloadFcmMessageDataBuilder
        > {
  _$NativePushPayloadFcmMessageData? _$v;

  String? _v;
  String? get v => _$this._v;
  set v(String? v) => _$this._v = v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _a;
  String? get a => _$this._a;
  set a(String? a) => _$this._a = a;

  String? _s;
  String? get s => _$this._s;
  set s(String? s) => _$this._s = s;

  String? _ev;
  String? get ev => _$this._ev;
  set ev(String? ev) => _$this._ev = ev;

  String? _l;
  String? get l => _$this._l;
  set l(String? l) => _$this._l = l;

  String? _t;
  String? get t => _$this._t;
  set t(String? t) => _$this._t = t;

  String? _c;
  String? get c => _$this._c;
  set c(String? c) => _$this._c = c;

  NativePushPayloadFcmMessageDataBuilder() {
    NativePushPayloadFcmMessageData._defaults(this);
  }

  NativePushPayloadFcmMessageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _v = $v.v;
      _id = $v.id;
      _a = $v.a;
      _s = $v.s;
      _ev = $v.ev;
      _l = $v.l;
      _t = $v.t;
      _c = $v.c;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NativePushPayloadFcmMessageData other) {
    _$v = other as _$NativePushPayloadFcmMessageData;
  }

  @override
  void update(void Function(NativePushPayloadFcmMessageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NativePushPayloadFcmMessageData build() => _build();

  _$NativePushPayloadFcmMessageData _build() {
    final _$result =
        _$v ??
        _$NativePushPayloadFcmMessageData._(
          v: v,
          id: id,
          a: a,
          s: s,
          ev: ev,
          l: l,
          t: t,
          c: c,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
