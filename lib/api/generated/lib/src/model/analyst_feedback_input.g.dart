// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyst_feedback_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnalystFeedbackInputRatingEnum _$analystFeedbackInputRatingEnum_useful =
    const AnalystFeedbackInputRatingEnum._('useful');
const AnalystFeedbackInputRatingEnum
_$analystFeedbackInputRatingEnum_notUseful =
    const AnalystFeedbackInputRatingEnum._('notUseful');
const AnalystFeedbackInputRatingEnum _$analystFeedbackInputRatingEnum_wrong =
    const AnalystFeedbackInputRatingEnum._('wrong');
const AnalystFeedbackInputRatingEnum
_$analystFeedbackInputRatingEnum_unknownDefaultOpenApi =
    const AnalystFeedbackInputRatingEnum._('unknownDefaultOpenApi');

AnalystFeedbackInputRatingEnum _$analystFeedbackInputRatingEnumValueOf(
  String name,
) {
  switch (name) {
    case 'useful':
      return _$analystFeedbackInputRatingEnum_useful;
    case 'notUseful':
      return _$analystFeedbackInputRatingEnum_notUseful;
    case 'wrong':
      return _$analystFeedbackInputRatingEnum_wrong;
    case 'unknownDefaultOpenApi':
      return _$analystFeedbackInputRatingEnum_unknownDefaultOpenApi;
    default:
      return _$analystFeedbackInputRatingEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AnalystFeedbackInputRatingEnum>
_$analystFeedbackInputRatingEnumValues =
    BuiltSet<AnalystFeedbackInputRatingEnum>(
      const <AnalystFeedbackInputRatingEnum>[
        _$analystFeedbackInputRatingEnum_useful,
        _$analystFeedbackInputRatingEnum_notUseful,
        _$analystFeedbackInputRatingEnum_wrong,
        _$analystFeedbackInputRatingEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<AnalystFeedbackInputRatingEnum>
_$analystFeedbackInputRatingEnumSerializer =
    _$AnalystFeedbackInputRatingEnumSerializer();

class _$AnalystFeedbackInputRatingEnumSerializer
    implements PrimitiveSerializer<AnalystFeedbackInputRatingEnum> {
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
  final Iterable<Type> types = const <Type>[AnalystFeedbackInputRatingEnum];
  @override
  final String wireName = 'AnalystFeedbackInputRatingEnum';

  @override
  Object serialize(
    Serializers serializers,
    AnalystFeedbackInputRatingEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AnalystFeedbackInputRatingEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AnalystFeedbackInputRatingEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AnalystFeedbackInput extends AnalystFeedbackInput {
  @override
  final AnalystFeedbackInputRatingEnum rating;
  @override
  final String? comment;

  factory _$AnalystFeedbackInput([
    void Function(AnalystFeedbackInputBuilder)? updates,
  ]) => (AnalystFeedbackInputBuilder()..update(updates))._build();

  _$AnalystFeedbackInput._({required this.rating, this.comment}) : super._();
  @override
  AnalystFeedbackInput rebuild(
    void Function(AnalystFeedbackInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnalystFeedbackInputBuilder toBuilder() =>
      AnalystFeedbackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalystFeedbackInput &&
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
    return (newBuiltValueToStringHelper(r'AnalystFeedbackInput')
          ..add('rating', rating)
          ..add('comment', comment))
        .toString();
  }
}

class AnalystFeedbackInputBuilder
    implements Builder<AnalystFeedbackInput, AnalystFeedbackInputBuilder> {
  _$AnalystFeedbackInput? _$v;

  AnalystFeedbackInputRatingEnum? _rating;
  AnalystFeedbackInputRatingEnum? get rating => _$this._rating;
  set rating(AnalystFeedbackInputRatingEnum? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  AnalystFeedbackInputBuilder() {
    AnalystFeedbackInput._defaults(this);
  }

  AnalystFeedbackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rating = $v.rating;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalystFeedbackInput other) {
    _$v = other as _$AnalystFeedbackInput;
  }

  @override
  void update(void Function(AnalystFeedbackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalystFeedbackInput build() => _build();

  _$AnalystFeedbackInput _build() {
    final _$result =
        _$v ??
        _$AnalystFeedbackInput._(
          rating: BuiltValueNullFieldError.checkNotNull(
            rating,
            r'AnalystFeedbackInput',
            'rating',
          ),
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
