// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpa_batch_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CpaBatchResult extends CpaBatchResult {
  @override
  final KinematicState subject;
  @override
  final DateTime asOf;
  @override
  final int evaluated;
  @override
  final bool? truncated;
  @override
  final BuiltList<CpaResult> items;

  factory _$CpaBatchResult([void Function(CpaBatchResultBuilder)? updates]) =>
      (CpaBatchResultBuilder()..update(updates))._build();

  _$CpaBatchResult._(
      {required this.subject,
      required this.asOf,
      required this.evaluated,
      this.truncated,
      required this.items})
      : super._();
  @override
  CpaBatchResult rebuild(void Function(CpaBatchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpaBatchResultBuilder toBuilder() => CpaBatchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpaBatchResult &&
        subject == other.subject &&
        asOf == other.asOf &&
        evaluated == other.evaluated &&
        truncated == other.truncated &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, asOf.hashCode);
    _$hash = $jc(_$hash, evaluated.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CpaBatchResult')
          ..add('subject', subject)
          ..add('asOf', asOf)
          ..add('evaluated', evaluated)
          ..add('truncated', truncated)
          ..add('items', items))
        .toString();
  }
}

class CpaBatchResultBuilder
    implements Builder<CpaBatchResult, CpaBatchResultBuilder> {
  _$CpaBatchResult? _$v;

  KinematicStateBuilder? _subject;
  KinematicStateBuilder get subject =>
      _$this._subject ??= KinematicStateBuilder();
  set subject(KinematicStateBuilder? subject) => _$this._subject = subject;

  DateTime? _asOf;
  DateTime? get asOf => _$this._asOf;
  set asOf(DateTime? asOf) => _$this._asOf = asOf;

  int? _evaluated;
  int? get evaluated => _$this._evaluated;
  set evaluated(int? evaluated) => _$this._evaluated = evaluated;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ListBuilder<CpaResult>? _items;
  ListBuilder<CpaResult> get items =>
      _$this._items ??= ListBuilder<CpaResult>();
  set items(ListBuilder<CpaResult>? items) => _$this._items = items;

  CpaBatchResultBuilder() {
    CpaBatchResult._defaults(this);
  }

  CpaBatchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject.toBuilder();
      _asOf = $v.asOf;
      _evaluated = $v.evaluated;
      _truncated = $v.truncated;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpaBatchResult other) {
    _$v = other as _$CpaBatchResult;
  }

  @override
  void update(void Function(CpaBatchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CpaBatchResult build() => _build();

  _$CpaBatchResult _build() {
    _$CpaBatchResult _$result;
    try {
      _$result = _$v ??
          _$CpaBatchResult._(
            subject: subject.build(),
            asOf: BuiltValueNullFieldError.checkNotNull(
                asOf, r'CpaBatchResult', 'asOf'),
            evaluated: BuiltValueNullFieldError.checkNotNull(
                evaluated, r'CpaBatchResult', 'evaluated'),
            truncated: truncated,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subject';
        subject.build();

        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CpaBatchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
