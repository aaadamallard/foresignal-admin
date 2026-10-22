// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'narrative_log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_created =
    const NarrativeLogEntryActionEnum._('created');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_merged =
    const NarrativeLogEntryActionEnum._('merged');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_mergedInto =
    const NarrativeLogEntryActionEnum._('mergedInto');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_split =
    const NarrativeLogEntryActionEnum._('split');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_splitFrom =
    const NarrativeLogEntryActionEnum._('splitFrom');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_stateChanged =
    const NarrativeLogEntryActionEnum._('stateChanged');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_statusChanged =
    const NarrativeLogEntryActionEnum._('statusChanged');
const NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnum_titleChanged =
    const NarrativeLogEntryActionEnum._('titleChanged');

NarrativeLogEntryActionEnum _$narrativeLogEntryActionEnumValueOf(String name) {
  switch (name) {
    case 'created':
      return _$narrativeLogEntryActionEnum_created;
    case 'merged':
      return _$narrativeLogEntryActionEnum_merged;
    case 'mergedInto':
      return _$narrativeLogEntryActionEnum_mergedInto;
    case 'split':
      return _$narrativeLogEntryActionEnum_split;
    case 'splitFrom':
      return _$narrativeLogEntryActionEnum_splitFrom;
    case 'stateChanged':
      return _$narrativeLogEntryActionEnum_stateChanged;
    case 'statusChanged':
      return _$narrativeLogEntryActionEnum_statusChanged;
    case 'titleChanged':
      return _$narrativeLogEntryActionEnum_titleChanged;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NarrativeLogEntryActionEnum>
_$narrativeLogEntryActionEnumValues =
    BuiltSet<NarrativeLogEntryActionEnum>(const <NarrativeLogEntryActionEnum>[
      _$narrativeLogEntryActionEnum_created,
      _$narrativeLogEntryActionEnum_merged,
      _$narrativeLogEntryActionEnum_mergedInto,
      _$narrativeLogEntryActionEnum_split,
      _$narrativeLogEntryActionEnum_splitFrom,
      _$narrativeLogEntryActionEnum_stateChanged,
      _$narrativeLogEntryActionEnum_statusChanged,
      _$narrativeLogEntryActionEnum_titleChanged,
    ]);

Serializer<NarrativeLogEntryActionEnum>
_$narrativeLogEntryActionEnumSerializer =
    _$NarrativeLogEntryActionEnumSerializer();

class _$NarrativeLogEntryActionEnumSerializer
    implements PrimitiveSerializer<NarrativeLogEntryActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'created': 'created',
    'merged': 'merged',
    'mergedInto': 'merged-into',
    'split': 'split',
    'splitFrom': 'split-from',
    'stateChanged': 'state-changed',
    'statusChanged': 'status-changed',
    'titleChanged': 'title-changed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'created': 'created',
    'merged': 'merged',
    'merged-into': 'mergedInto',
    'split': 'split',
    'split-from': 'splitFrom',
    'state-changed': 'stateChanged',
    'status-changed': 'statusChanged',
    'title-changed': 'titleChanged',
  };

  @override
  final Iterable<Type> types = const <Type>[NarrativeLogEntryActionEnum];
  @override
  final String wireName = 'NarrativeLogEntryActionEnum';

  @override
  Object serialize(
    Serializers serializers,
    NarrativeLogEntryActionEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NarrativeLogEntryActionEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NarrativeLogEntryActionEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$NarrativeLogEntry extends NarrativeLogEntry {
  @override
  final DateTime at;
  @override
  final NarrativeLogEntryActionEnum action;
  @override
  final String by;
  @override
  final BuiltList<String>? relatedNarrativeIds;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? reason;

  factory _$NarrativeLogEntry([
    void Function(NarrativeLogEntryBuilder)? updates,
  ]) => (NarrativeLogEntryBuilder()..update(updates))._build();

  _$NarrativeLogEntry._({
    required this.at,
    required this.action,
    required this.by,
    this.relatedNarrativeIds,
    this.from,
    this.to,
    this.reason,
  }) : super._();
  @override
  NarrativeLogEntry rebuild(void Function(NarrativeLogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NarrativeLogEntryBuilder toBuilder() =>
      NarrativeLogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NarrativeLogEntry &&
        at == other.at &&
        action == other.action &&
        by == other.by &&
        relatedNarrativeIds == other.relatedNarrativeIds &&
        from == other.from &&
        to == other.to &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, relatedNarrativeIds.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NarrativeLogEntry')
          ..add('at', at)
          ..add('action', action)
          ..add('by', by)
          ..add('relatedNarrativeIds', relatedNarrativeIds)
          ..add('from', from)
          ..add('to', to)
          ..add('reason', reason))
        .toString();
  }
}

class NarrativeLogEntryBuilder
    implements Builder<NarrativeLogEntry, NarrativeLogEntryBuilder> {
  _$NarrativeLogEntry? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  NarrativeLogEntryActionEnum? _action;
  NarrativeLogEntryActionEnum? get action => _$this._action;
  set action(NarrativeLogEntryActionEnum? action) => _$this._action = action;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  ListBuilder<String>? _relatedNarrativeIds;
  ListBuilder<String> get relatedNarrativeIds =>
      _$this._relatedNarrativeIds ??= ListBuilder<String>();
  set relatedNarrativeIds(ListBuilder<String>? relatedNarrativeIds) =>
      _$this._relatedNarrativeIds = relatedNarrativeIds;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  NarrativeLogEntryBuilder() {
    NarrativeLogEntry._defaults(this);
  }

  NarrativeLogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _action = $v.action;
      _by = $v.by;
      _relatedNarrativeIds = $v.relatedNarrativeIds?.toBuilder();
      _from = $v.from;
      _to = $v.to;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NarrativeLogEntry other) {
    _$v = other as _$NarrativeLogEntry;
  }

  @override
  void update(void Function(NarrativeLogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NarrativeLogEntry build() => _build();

  _$NarrativeLogEntry _build() {
    _$NarrativeLogEntry _$result;
    try {
      _$result =
          _$v ??
          _$NarrativeLogEntry._(
            at: BuiltValueNullFieldError.checkNotNull(
              at,
              r'NarrativeLogEntry',
              'at',
            ),
            action: BuiltValueNullFieldError.checkNotNull(
              action,
              r'NarrativeLogEntry',
              'action',
            ),
            by: BuiltValueNullFieldError.checkNotNull(
              by,
              r'NarrativeLogEntry',
              'by',
            ),
            relatedNarrativeIds: _relatedNarrativeIds?.build(),
            from: from,
            to: to,
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'relatedNarrativeIds';
        _relatedNarrativeIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NarrativeLogEntry',
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
