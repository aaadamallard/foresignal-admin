// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_platform_settings_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SocialPlatformSettingsOptionsFieldsParamEnum
    _$socialPlatformSettingsOptionsFieldsParamEnum_post =
    const SocialPlatformSettingsOptionsFieldsParamEnum._('post');
const SocialPlatformSettingsOptionsFieldsParamEnum
    _$socialPlatformSettingsOptionsFieldsParamEnum_tweet =
    const SocialPlatformSettingsOptionsFieldsParamEnum._('tweet');

SocialPlatformSettingsOptionsFieldsParamEnum
    _$socialPlatformSettingsOptionsFieldsParamEnumValueOf(String name) {
  switch (name) {
    case 'post':
      return _$socialPlatformSettingsOptionsFieldsParamEnum_post;
    case 'tweet':
      return _$socialPlatformSettingsOptionsFieldsParamEnum_tweet;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SocialPlatformSettingsOptionsFieldsParamEnum>
    _$socialPlatformSettingsOptionsFieldsParamEnumValues = BuiltSet<
        SocialPlatformSettingsOptionsFieldsParamEnum>(const <SocialPlatformSettingsOptionsFieldsParamEnum>[
  _$socialPlatformSettingsOptionsFieldsParamEnum_post,
  _$socialPlatformSettingsOptionsFieldsParamEnum_tweet,
]);

Serializer<SocialPlatformSettingsOptionsFieldsParamEnum>
    _$socialPlatformSettingsOptionsFieldsParamEnumSerializer =
    _$SocialPlatformSettingsOptionsFieldsParamEnumSerializer();

class _$SocialPlatformSettingsOptionsFieldsParamEnumSerializer
    implements
        PrimitiveSerializer<SocialPlatformSettingsOptionsFieldsParamEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'post': 'post',
    'tweet': 'tweet',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'post': 'post',
    'tweet': 'tweet',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SocialPlatformSettingsOptionsFieldsParamEnum
  ];
  @override
  final String wireName = 'SocialPlatformSettingsOptionsFieldsParamEnum';

  @override
  Object serialize(Serializers serializers,
          SocialPlatformSettingsOptionsFieldsParamEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SocialPlatformSettingsOptionsFieldsParamEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SocialPlatformSettingsOptionsFieldsParamEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SocialPlatformSettingsOptions extends SocialPlatformSettingsOptions {
  @override
  final BuiltList<String>? instances;
  @override
  final bool? replay;
  @override
  final bool? standingCounts;
  @override
  final bool? fullArchive;
  @override
  final bool? comments;
  @override
  final int? maxResults;
  @override
  final SocialPlatformSettingsOptionsFieldsParamEnum? fieldsParam;

  factory _$SocialPlatformSettingsOptions(
          [void Function(SocialPlatformSettingsOptionsBuilder)? updates]) =>
      (SocialPlatformSettingsOptionsBuilder()..update(updates))._build();

  _$SocialPlatformSettingsOptions._(
      {this.instances,
      this.replay,
      this.standingCounts,
      this.fullArchive,
      this.comments,
      this.maxResults,
      this.fieldsParam})
      : super._();
  @override
  SocialPlatformSettingsOptions rebuild(
          void Function(SocialPlatformSettingsOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialPlatformSettingsOptionsBuilder toBuilder() =>
      SocialPlatformSettingsOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialPlatformSettingsOptions &&
        instances == other.instances &&
        replay == other.replay &&
        standingCounts == other.standingCounts &&
        fullArchive == other.fullArchive &&
        comments == other.comments &&
        maxResults == other.maxResults &&
        fieldsParam == other.fieldsParam;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instances.hashCode);
    _$hash = $jc(_$hash, replay.hashCode);
    _$hash = $jc(_$hash, standingCounts.hashCode);
    _$hash = $jc(_$hash, fullArchive.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, fieldsParam.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SocialPlatformSettingsOptions')
          ..add('instances', instances)
          ..add('replay', replay)
          ..add('standingCounts', standingCounts)
          ..add('fullArchive', fullArchive)
          ..add('comments', comments)
          ..add('maxResults', maxResults)
          ..add('fieldsParam', fieldsParam))
        .toString();
  }
}

class SocialPlatformSettingsOptionsBuilder
    implements
        Builder<SocialPlatformSettingsOptions,
            SocialPlatformSettingsOptionsBuilder> {
  _$SocialPlatformSettingsOptions? _$v;

  ListBuilder<String>? _instances;
  ListBuilder<String> get instances =>
      _$this._instances ??= ListBuilder<String>();
  set instances(ListBuilder<String>? instances) =>
      _$this._instances = instances;

  bool? _replay;
  bool? get replay => _$this._replay;
  set replay(bool? replay) => _$this._replay = replay;

  bool? _standingCounts;
  bool? get standingCounts => _$this._standingCounts;
  set standingCounts(bool? standingCounts) =>
      _$this._standingCounts = standingCounts;

  bool? _fullArchive;
  bool? get fullArchive => _$this._fullArchive;
  set fullArchive(bool? fullArchive) => _$this._fullArchive = fullArchive;

  bool? _comments;
  bool? get comments => _$this._comments;
  set comments(bool? comments) => _$this._comments = comments;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  SocialPlatformSettingsOptionsFieldsParamEnum? _fieldsParam;
  SocialPlatformSettingsOptionsFieldsParamEnum? get fieldsParam =>
      _$this._fieldsParam;
  set fieldsParam(SocialPlatformSettingsOptionsFieldsParamEnum? fieldsParam) =>
      _$this._fieldsParam = fieldsParam;

  SocialPlatformSettingsOptionsBuilder() {
    SocialPlatformSettingsOptions._defaults(this);
  }

  SocialPlatformSettingsOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instances = $v.instances?.toBuilder();
      _replay = $v.replay;
      _standingCounts = $v.standingCounts;
      _fullArchive = $v.fullArchive;
      _comments = $v.comments;
      _maxResults = $v.maxResults;
      _fieldsParam = $v.fieldsParam;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialPlatformSettingsOptions other) {
    _$v = other as _$SocialPlatformSettingsOptions;
  }

  @override
  void update(void Function(SocialPlatformSettingsOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SocialPlatformSettingsOptions build() => _build();

  _$SocialPlatformSettingsOptions _build() {
    _$SocialPlatformSettingsOptions _$result;
    try {
      _$result = _$v ??
          _$SocialPlatformSettingsOptions._(
            instances: _instances?.build(),
            replay: replay,
            standingCounts: standingCounts,
            fullArchive: fullArchive,
            comments: comments,
            maxResults: maxResults,
            fieldsParam: fieldsParam,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instances';
        _instances?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SocialPlatformSettingsOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
