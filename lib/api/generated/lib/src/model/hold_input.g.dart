// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HoldInput extends HoldInput {
  @override
  final String name;
  @override
  final String reason;
  @override
  final BuiltList<String>? sources;
  @override
  final BuiltList<String>? kinds;
  @override
  final DateTime? from;
  @override
  final DateTime? to;
  @override
  final int? fromSeq;
  @override
  final int? toSeq;
  @override
  final DateTime? expiresAt;

  factory _$HoldInput([void Function(HoldInputBuilder)? updates]) =>
      (HoldInputBuilder()..update(updates))._build();

  _$HoldInput._(
      {required this.name,
      required this.reason,
      this.sources,
      this.kinds,
      this.from,
      this.to,
      this.fromSeq,
      this.toSeq,
      this.expiresAt})
      : super._();
  @override
  HoldInput rebuild(void Function(HoldInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldInputBuilder toBuilder() => HoldInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldInput &&
        name == other.name &&
        reason == other.reason &&
        sources == other.sources &&
        kinds == other.kinds &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldInput')
          ..add('name', name)
          ..add('reason', reason)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class HoldInputBuilder implements Builder<HoldInput, HoldInputBuilder> {
  _$HoldInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<String>? _sources;
  ListBuilder<String> get sources => _$this._sources ??= ListBuilder<String>();
  set sources(ListBuilder<String>? sources) => _$this._sources = sources;

  ListBuilder<String>? _kinds;
  ListBuilder<String> get kinds => _$this._kinds ??= ListBuilder<String>();
  set kinds(ListBuilder<String>? kinds) => _$this._kinds = kinds;

  DateTime? _from;
  DateTime? get from => _$this._from;
  set from(DateTime? from) => _$this._from = from;

  DateTime? _to;
  DateTime? get to => _$this._to;
  set to(DateTime? to) => _$this._to = to;

  int? _fromSeq;
  int? get fromSeq => _$this._fromSeq;
  set fromSeq(int? fromSeq) => _$this._fromSeq = fromSeq;

  int? _toSeq;
  int? get toSeq => _$this._toSeq;
  set toSeq(int? toSeq) => _$this._toSeq = toSeq;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  HoldInputBuilder() {
    HoldInput._defaults(this);
  }

  HoldInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _reason = $v.reason;
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldInput other) {
    _$v = other as _$HoldInput;
  }

  @override
  void update(void Function(HoldInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldInput build() => _build();

  _$HoldInput _build() {
    _$HoldInput _$result;
    try {
      _$result = _$v ??
          _$HoldInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'HoldInput', 'name'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'HoldInput', 'reason'),
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            from: from,
            to: to,
            fromSeq: fromSeq,
            toSeq: toSeq,
            expiresAt: expiresAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HoldInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
