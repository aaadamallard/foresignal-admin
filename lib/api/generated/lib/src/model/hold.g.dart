// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Hold extends Hold {
  @override
  final String id;
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
  @override
  final DateTime createdAt;
  @override
  final String? createdBy;
  @override
  final int heldRows;
  @override
  final int heldBytes;

  factory _$Hold([void Function(HoldBuilder)? updates]) =>
      (HoldBuilder()..update(updates))._build();

  _$Hold._(
      {required this.id,
      required this.name,
      required this.reason,
      this.sources,
      this.kinds,
      this.from,
      this.to,
      this.fromSeq,
      this.toSeq,
      this.expiresAt,
      required this.createdAt,
      this.createdBy,
      required this.heldRows,
      required this.heldBytes})
      : super._();
  @override
  Hold rebuild(void Function(HoldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldBuilder toBuilder() => HoldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hold &&
        id == other.id &&
        name == other.name &&
        reason == other.reason &&
        sources == other.sources &&
        kinds == other.kinds &&
        from == other.from &&
        to == other.to &&
        fromSeq == other.fromSeq &&
        toSeq == other.toSeq &&
        expiresAt == other.expiresAt &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy &&
        heldRows == other.heldRows &&
        heldBytes == other.heldBytes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, sources.hashCode);
    _$hash = $jc(_$hash, kinds.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, fromSeq.hashCode);
    _$hash = $jc(_$hash, toSeq.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, heldRows.hashCode);
    _$hash = $jc(_$hash, heldBytes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Hold')
          ..add('id', id)
          ..add('name', name)
          ..add('reason', reason)
          ..add('sources', sources)
          ..add('kinds', kinds)
          ..add('from', from)
          ..add('to', to)
          ..add('fromSeq', fromSeq)
          ..add('toSeq', toSeq)
          ..add('expiresAt', expiresAt)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy)
          ..add('heldRows', heldRows)
          ..add('heldBytes', heldBytes))
        .toString();
  }
}

class HoldBuilder implements Builder<Hold, HoldBuilder> {
  _$Hold? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  int? _heldRows;
  int? get heldRows => _$this._heldRows;
  set heldRows(int? heldRows) => _$this._heldRows = heldRows;

  int? _heldBytes;
  int? get heldBytes => _$this._heldBytes;
  set heldBytes(int? heldBytes) => _$this._heldBytes = heldBytes;

  HoldBuilder() {
    Hold._defaults(this);
  }

  HoldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _reason = $v.reason;
      _sources = $v.sources?.toBuilder();
      _kinds = $v.kinds?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _fromSeq = $v.fromSeq;
      _toSeq = $v.toSeq;
      _expiresAt = $v.expiresAt;
      _createdAt = $v.createdAt;
      _createdBy = $v.createdBy;
      _heldRows = $v.heldRows;
      _heldBytes = $v.heldBytes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hold other) {
    _$v = other as _$Hold;
  }

  @override
  void update(void Function(HoldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Hold build() => _build();

  _$Hold _build() {
    _$Hold _$result;
    try {
      _$result = _$v ??
          _$Hold._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Hold', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Hold', 'name'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'Hold', 'reason'),
            sources: _sources?.build(),
            kinds: _kinds?.build(),
            from: from,
            to: to,
            fromSeq: fromSeq,
            toSeq: toSeq,
            expiresAt: expiresAt,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Hold', 'createdAt'),
            createdBy: createdBy,
            heldRows: BuiltValueNullFieldError.checkNotNull(
                heldRows, r'Hold', 'heldRows'),
            heldBytes: BuiltValueNullFieldError.checkNotNull(
                heldBytes, r'Hold', 'heldBytes'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
        _$failedField = 'kinds';
        _kinds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Hold', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
