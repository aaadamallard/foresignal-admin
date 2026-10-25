// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_feedback_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AssessmentFeedbackInputRatingEnum
_$assessmentFeedbackInputRatingEnum_useful =
    const AssessmentFeedbackInputRatingEnum._('useful');
const AssessmentFeedbackInputRatingEnum
_$assessmentFeedbackInputRatingEnum_notUseful =
    const AssessmentFeedbackInputRatingEnum._('notUseful');
const AssessmentFeedbackInputRatingEnum
_$assessmentFeedbackInputRatingEnum_wrong =
    const AssessmentFeedbackInputRatingEnum._('wrong');
const AssessmentFeedbackInputRatingEnum
_$assessmentFeedbackInputRatingEnum_unknownDefaultOpenApi =
    const AssessmentFeedbackInputRatingEnum._('unknownDefaultOpenApi');

AssessmentFeedbackInputRatingEnum _$assessmentFeedbackInputRatingEnumValueOf(
  String name,
) {
  switch (name) {
    case 'useful':
      return _$assessmentFeedbackInputRatingEnum_useful;
    case 'notUseful':
      return _$assessmentFeedbackInputRatingEnum_notUseful;
    case 'wrong':
      return _$assessmentFeedbackInputRatingEnum_wrong;
    case 'unknownDefaultOpenApi':
      return _$assessmentFeedbackInputRatingEnum_unknownDefaultOpenApi;
    default:
      return _$assessmentFeedbackInputRatingEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AssessmentFeedbackInputRatingEnum>
_$assessmentFeedbackInputRatingEnumValues =
    BuiltSet<AssessmentFeedbackInputRatingEnum>(
      const <AssessmentFeedbackInputRatingEnum>[
        _$assessmentFeedbackInputRatingEnum_useful,
        _$assessmentFeedbackInputRatingEnum_notUseful,
        _$assessmentFeedbackInputRatingEnum_wrong,
        _$assessmentFeedbackInputRatingEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AssessmentFeedbackInputRatingEnum>
_$assessmentFeedbackInputRatingEnumSerializer =
    _$AssessmentFeedbackInputRatingEnumSerializer();

class _$AssessmentFeedbackInputRatingEnumSerializer
    implements PrimitiveSerializer<AssessmentFeedbackInputRatingEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'useful': 'useful',
    'notUseful': 'not_useful',
    'wrong': 'wrong',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'useful': 'useful',
    'not_useful': 'notUseful',
    'wrong': 'wrong',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AssessmentFeedbackInputRatingEnum];
  @override
  final String wireName = 'AssessmentFeedbackInputRatingEnum';

  @override
  Object serialize(
    Serializers serializers,
    AssessmentFeedbackInputRatingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AssessmentFeedbackInputRatingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AssessmentFeedbackInputRatingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AssessmentFeedbackInput extends AssessmentFeedbackInput {
  @override
  final AssessmentFeedbackInputRatingEnum rating;
  @override
  final String? comment;

  factory _$AssessmentFeedbackInput([
    void Function(AssessmentFeedbackInputBuilder)? updates,
  ]) => (AssessmentFeedbackInputBuilder()..update(updates))._build();

  _$AssessmentFeedbackInput._({required this.rating, this.comment}) : super._();
  @override
  AssessmentFeedbackInput rebuild(
    void Function(AssessmentFeedbackInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssessmentFeedbackInputBuilder toBuilder() =>
      AssessmentFeedbackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssessmentFeedbackInput &&
        rating == other.rating &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssessmentFeedbackInput')
          ..add('rating', rating)
          ..add('comment', comment))
        .toString();
  }
}

class AssessmentFeedbackInputBuilder
    implements
        Builder<AssessmentFeedbackInput, AssessmentFeedbackInputBuilder> {
  _$AssessmentFeedbackInput? _$v;

  AssessmentFeedbackInputRatingEnum? _rating;
  AssessmentFeedbackInputRatingEnum? get rating => _$this._rating;
  set rating(AssessmentFeedbackInputRatingEnum? rating) =>
      _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  AssessmentFeedbackInputBuilder() {
    AssessmentFeedbackInput._defaults(this);
  }

  AssessmentFeedbackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rating = $v.rating;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssessmentFeedbackInput other) {
    _$v = other as _$AssessmentFeedbackInput;
  }

  @override
  void update(void Function(AssessmentFeedbackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssessmentFeedbackInput build() => _build();

  _$AssessmentFeedbackInput _build() {
    final _$result =
        _$v ??
        _$AssessmentFeedbackInput._(
          rating: BuiltValueNullFieldError.checkNotNull(
            rating,
            r'AssessmentFeedbackInput',
            'rating',
          ),
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
