// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystFeedbackTargetEnum _$analystFeedbackTargetEnum_note =
    const AnalystFeedbackTargetEnum._('note');
const AnalystFeedbackTargetEnum _$analystFeedbackTargetEnum_proposal =
    const AnalystFeedbackTargetEnum._('proposal');

AnalystFeedbackTargetEnum _$analystFeedbackTargetEnumValueOf(String name) {
  switch (name) {
    case 'note':
      return _$analystFeedbackTargetEnum_note;
    case 'proposal':
      return _$analystFeedbackTargetEnum_proposal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystFeedbackTargetEnum> _$analystFeedbackTargetEnumValues =
    BuiltSet<AnalystFeedbackTargetEnum>(const <AnalystFeedbackTargetEnum>[
  _$analystFeedbackTargetEnum_note,
  _$analystFeedbackTargetEnum_proposal,
]);

const AnalystFeedbackRatingEnum _$analystFeedbackRatingEnum_useful =
    const AnalystFeedbackRatingEnum._('useful');
const AnalystFeedbackRatingEnum _$analystFeedbackRatingEnum_notUseful =
    const AnalystFeedbackRatingEnum._('notUseful');
const AnalystFeedbackRatingEnum _$analystFeedbackRatingEnum_wrong =
    const AnalystFeedbackRatingEnum._('wrong');

AnalystFeedbackRatingEnum _$analystFeedbackRatingEnumValueOf(String name) {
  switch (name) {
    case 'useful':
      return _$analystFeedbackRatingEnum_useful;
    case 'notUseful':
      return _$analystFeedbackRatingEnum_notUseful;
    case 'wrong':
      return _$analystFeedbackRatingEnum_wrong;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AnalystFeedbackRatingEnum> _$analystFeedbackRatingEnumValues =
    BuiltSet<AnalystFeedbackRatingEnum>(const <AnalystFeedbackRatingEnum>[
  _$analystFeedbackRatingEnum_useful,
  _$analystFeedbackRatingEnum_notUseful,
  _$analystFeedbackRatingEnum_wrong,
]);

Serializer<AnalystFeedbackTargetEnum> _$analystFeedbackTargetEnumSerializer =
    _$AnalystFeedbackTargetEnumSerializer();
Serializer<AnalystFeedbackRatingEnum> _$analystFeedbackRatingEnumSerializer =
    _$AnalystFeedbackRatingEnumSerializer();

class _$AnalystFeedbackTargetEnumSerializer
    implements PrimitiveSerializer<AnalystFeedbackTargetEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'note': 'note',
    'proposal': 'proposal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'note': 'note',
    'proposal': 'proposal',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystFeedbackTargetEnum];
  @override
  final String wireName = 'AnalystFeedbackTargetEnum';

  @override
  Object serialize(Serializers serializers, AnalystFeedbackTargetEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystFeedbackTargetEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystFeedbackTargetEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystFeedbackRatingEnumSerializer
    implements PrimitiveSerializer<AnalystFeedbackRatingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'useful': 'useful',
    'notUseful': 'not_useful',
    'wrong': 'wrong',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'useful': 'useful',
    'not_useful': 'notUseful',
    'wrong': 'wrong',
  };

  @override
  final Iterable<Type> types = const <Type>[AnalystFeedbackRatingEnum];
  @override
  final String wireName = 'AnalystFeedbackRatingEnum';

  @override
  Object serialize(Serializers serializers, AnalystFeedbackRatingEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AnalystFeedbackRatingEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnalystFeedbackRatingEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AnalystFeedback extends AnalystFeedback {
  @override
  final String id;
  @override
  final AnalystFeedbackTargetEnum target;
  @override
  final String targetId;
  @override
  final AnalystFeedbackRatingEnum rating;
  @override
  final String? comment;
  @override
  final String by;
  @override
  final DateTime at;

  factory _$AnalystFeedback([void Function(AnalystFeedbackBuilder)? updates]) =>
      (AnalystFeedbackBuilder()..update(updates))._build();

  _$AnalystFeedback._(
      {required this.id,
      required this.target,
      required this.targetId,
      required this.rating,
      this.comment,
      required this.by,
      required this.at})
      : super._();
  @override
  AnalystFeedback rebuild(void Function(AnalystFeedbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalystFeedbackBuilder toBuilder() => AnalystFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystFeedback &&
        id == other.id &&
        target == other.target &&
        targetId == other.targetId &&
        rating == other.rating &&
        comment == other.comment &&
        by == other.by &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, target.hashCode);
    _$hash = $jc(_$hash, targetId.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnalystFeedback')
          ..add('id', id)
          ..add('target', target)
          ..add('targetId', targetId)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('by', by)
          ..add('at', at))
        .toString();
  }
}

class AnalystFeedbackBuilder
    implements Builder<AnalystFeedback, AnalystFeedbackBuilder> {
  _$AnalystFeedback? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AnalystFeedbackTargetEnum? _target;
  AnalystFeedbackTargetEnum? get target => _$this._target;
  set target(AnalystFeedbackTargetEnum? target) => _$this._target = target;

  String? _targetId;
  String? get targetId => _$this._targetId;
  set targetId(String? targetId) => _$this._targetId = targetId;

  AnalystFeedbackRatingEnum? _rating;
  AnalystFeedbackRatingEnum? get rating => _$this._rating;
  set rating(AnalystFeedbackRatingEnum? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AnalystFeedbackBuilder() {
    AnalystFeedback._defaults(this);
  }

  AnalystFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _target = $v.target;
      _targetId = $v.targetId;
      _rating = $v.rating;
      _comment = $v.comment;
      _by = $v.by;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystFeedback other) {
    _$v = other as _$AnalystFeedback;
  }

  @override
  void update(void Function(AnalystFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystFeedback build() => _build();

  _$AnalystFeedback _build() {
    final _$result = _$v ??
        _$AnalystFeedback._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AnalystFeedback', 'id'),
          target: BuiltValueNullFieldError.checkNotNull(
              target, r'AnalystFeedback', 'target'),
          targetId: BuiltValueNullFieldError.checkNotNull(
              targetId, r'AnalystFeedback', 'targetId'),
          rating: BuiltValueNullFieldError.checkNotNull(
              rating, r'AnalystFeedback', 'rating'),
          comment: comment,
          by: BuiltValueNullFieldError.checkNotNull(
              by, r'AnalystFeedback', 'by'),
          at: BuiltValueNullFieldError.checkNotNull(
              at, r'AnalystFeedback', 'at'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
