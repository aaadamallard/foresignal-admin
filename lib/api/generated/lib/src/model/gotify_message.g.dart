// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gotify_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GotifyMessageAppidEnum _$gotifyMessageAppidEnum_number1 =
    const GotifyMessageAppidEnum._('number1');
const GotifyMessageAppidEnum _$gotifyMessageAppidEnum_unknownDefaultOpenApi =
    const GotifyMessageAppidEnum._('unknownDefaultOpenApi');

GotifyMessageAppidEnum _$gotifyMessageAppidEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$gotifyMessageAppidEnum_number1;
    case 'unknownDefaultOpenApi':
      return _$gotifyMessageAppidEnum_unknownDefaultOpenApi;
    default:
      return _$gotifyMessageAppidEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<GotifyMessageAppidEnum> _$gotifyMessageAppidEnumValues =
    BuiltSet<GotifyMessageAppidEnum>(const <GotifyMessageAppidEnum>[
      _$gotifyMessageAppidEnum_number1,
      _$gotifyMessageAppidEnum_unknownDefaultOpenApi,
    ]);

Serializer<GotifyMessageAppidEnum> _$gotifyMessageAppidEnumSerializer =
    _$GotifyMessageAppidEnumSerializer();

class _$GotifyMessageAppidEnumSerializer
    implements PrimitiveSerializer<GotifyMessageAppidEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[GotifyMessageAppidEnum];
  @override
  final String wireName = 'GotifyMessageAppidEnum';

  @override
  Object serialize(
    Serializers serializers,
    GotifyMessageAppidEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GotifyMessageAppidEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GotifyMessageAppidEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$GotifyMessage extends GotifyMessage {
  @override
  final int id;
  @override
  final GotifyMessageAppidEnum appid;
  @override
  final DateTime date;
  @override
  final String? title;
  @override
  final String message;
  @override
  final int? priority;
  @override
  final BuiltMap<String, JsonObject?>? extras;

  factory _$GotifyMessage([void Function(GotifyMessageBuilder)? updates]) =>
      (GotifyMessageBuilder()..update(updates))._build();

  _$GotifyMessage._({
    required this.id,
    required this.appid,
    required this.date,
    this.title,
    required this.message,
    this.priority,
    this.extras,
  }) : super._();
  @override
  GotifyMessage rebuild(void Function(GotifyMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GotifyMessageBuilder toBuilder() => GotifyMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GotifyMessage &&
        id == other.id &&
        appid == other.appid &&
        date == other.date &&
        title == other.title &&
        message == other.message &&
        priority == other.priority &&
        extras == other.extras;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, appid.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, extras.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GotifyMessage')
          ..add('id', id)
          ..add('appid', appid)
          ..add('date', date)
          ..add('title', title)
          ..add('message', message)
          ..add('priority', priority)
          ..add('extras', extras))
        .toString();
  }
}

class GotifyMessageBuilder
    implements Builder<GotifyMessage, GotifyMessageBuilder> {
  _$GotifyMessage? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GotifyMessageAppidEnum? _appid;
  GotifyMessageAppidEnum? get appid => _$this._appid;
  set appid(GotifyMessageAppidEnum? appid) => _$this._appid = appid;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  MapBuilder<String, JsonObject?>? _extras;
  MapBuilder<String, JsonObject?> get extras =>
      _$this._extras ??= MapBuilder<String, JsonObject?>();
  set extras(MapBuilder<String, JsonObject?>? extras) =>
      _$this._extras = extras;

  GotifyMessageBuilder() {
    GotifyMessage._defaults(this);
  }

  GotifyMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _appid = $v.appid;
      _date = $v.date;
      _title = $v.title;
      _message = $v.message;
      _priority = $v.priority;
      _extras = $v.extras?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GotifyMessage other) {
    _$v = other as _$GotifyMessage;
  }

  @override
  void update(void Function(GotifyMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GotifyMessage build() => _build();

  _$GotifyMessage _build() {
    _$GotifyMessage _$result;
    try {
      _$result =
          _$v ??
          _$GotifyMessage._(
            id: BuiltValueNullFieldError.checkNotNull(
              id,
              r'GotifyMessage',
              'id',
            ),
            appid: BuiltValueNullFieldError.checkNotNull(
              appid,
              r'GotifyMessage',
              'appid',
            ),
            date: BuiltValueNullFieldError.checkNotNull(
              date,
              r'GotifyMessage',
              'date',
            ),
            title: title,
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'GotifyMessage',
              'message',
            ),
            priority: priority,
            extras: _extras?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'extras';
        _extras?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GotifyMessage',
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
