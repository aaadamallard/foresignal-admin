// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_feedback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentFeedbackRatingEnum _$assessmentFeedbackRatingEnum_useful =
    const AssessmentFeedbackRatingEnum._('useful');
const AssessmentFeedbackRatingEnum _$assessmentFeedbackRatingEnum_notUseful =
    const AssessmentFeedbackRatingEnum._('notUseful');
const AssessmentFeedbackRatingEnum _$assessmentFeedbackRatingEnum_wrong =
    const AssessmentFeedbackRatingEnum._('wrong');

AssessmentFeedbackRatingEnum _$assessmentFeedbackRatingEnumValueOf(
  String name,
) {
  switch (name) {
    case 'useful':
      return _$assessmentFeedbackRatingEnum_useful;
    case 'notUseful':
      return _$assessmentFeedbackRatingEnum_notUseful;
    case 'wrong':
      return _$assessmentFeedbackRatingEnum_wrong;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AssessmentFeedbackRatingEnum>
_$assessmentFeedbackRatingEnumValues =
    BuiltSet<AssessmentFeedbackRatingEnum>(const <AssessmentFeedbackRatingEnum>[
      _$assessmentFeedbackRatingEnum_useful,
      _$assessmentFeedbackRatingEnum_notUseful,
      _$assessmentFeedbackRatingEnum_wrong,
    ]);

Serializer<AssessmentFeedbackRatingEnum>
_$assessmentFeedbackRatingEnumSerializer =
    _$AssessmentFeedbackRatingEnumSerializer();

class _$AssessmentFeedbackRatingEnumSerializer
    implements PrimitiveSerializer<AssessmentFeedbackRatingEnum> {
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
  final Iterable<Type> types = const <Type>[AssessmentFeedbackRatingEnum];
  @override
  final String wireName = 'AssessmentFeedbackRatingEnum';

  @override
  Object serialize(
    Serializers serializers,
    AssessmentFeedbackRatingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AssessmentFeedbackRatingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AssessmentFeedbackRatingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AssessmentFeedback extends AssessmentFeedback {
  @override
  final String id;
  @override
  final String assessmentId;
  @override
  final AssessmentFeedbackRatingEnum rating;
  @override
  final String? comment;
  @override
  final String by;
  @override
  final DateTime at;

  factory _$AssessmentFeedback([
    void Function(AssessmentFeedbackBuilder)? updates,
  ]) => (AssessmentFeedbackBuilder()..update(updates))._build();

  _$AssessmentFeedback._({
    required this.id,
    required this.assessmentId,
    required this.rating,
    this.comment,
    required this.by,
    required this.at,
  }) : super._();
  @override
  AssessmentFeedback rebuild(
    void Function(AssessmentFeedbackBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssessmentFeedbackBuilder toBuilder() =>
      AssessmentFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentFeedback &&
        id == other.id &&
        assessmentId == other.assessmentId &&
        rating == other.rating &&
        comment == other.comment &&
        by == other.by &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, assessmentId.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, by.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentFeedback')
          ..add('id', id)
          ..add('assessmentId', assessmentId)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('by', by)
          ..add('at', at))
        .toString();
  }
}

class AssessmentFeedbackBuilder
    implements Builder<AssessmentFeedback, AssessmentFeedbackBuilder> {
  _$AssessmentFeedback? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _assessmentId;
  String? get assessmentId => _$this._assessmentId;
  set assessmentId(String? assessmentId) => _$this._assessmentId = assessmentId;

  AssessmentFeedbackRatingEnum? _rating;
  AssessmentFeedbackRatingEnum? get rating => _$this._rating;
  set rating(AssessmentFeedbackRatingEnum? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _by;
  String? get by => _$this._by;
  set by(String? by) => _$this._by = by;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  AssessmentFeedbackBuilder() {
    AssessmentFeedback._defaults(this);
  }

  AssessmentFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _assessmentId = $v.assessmentId;
      _rating = $v.rating;
      _comment = $v.comment;
      _by = $v.by;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentFeedback other) {
    _$v = other as _$AssessmentFeedback;
  }

  @override
  void update(void Function(AssessmentFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentFeedback build() => _build();

  _$AssessmentFeedback _build() {
    final _$result =
        _$v ??
        _$AssessmentFeedback._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AssessmentFeedback',
            'id',
          ),
          assessmentId: BuiltValueNullFieldError.checkNotNull(
            assessmentId,
            r'AssessmentFeedback',
            'assessmentId',
          ),
          rating: BuiltValueNullFieldError.checkNotNull(
            rating,
            r'AssessmentFeedback',
            'rating',
          ),
          comment: comment,
          by: BuiltValueNullFieldError.checkNotNull(
            by,
            r'AssessmentFeedback',
            'by',
          ),
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'AssessmentFeedback',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
