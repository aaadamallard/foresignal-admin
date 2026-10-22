// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_assumption_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyAssumptionEventStatusEnum _$keyAssumptionEventStatusEnum_solid =
    const KeyAssumptionEventStatusEnum._('solid');
const KeyAssumptionEventStatusEnum _$keyAssumptionEventStatusEnum_caveated =
    const KeyAssumptionEventStatusEnum._('caveated');
const KeyAssumptionEventStatusEnum _$keyAssumptionEventStatusEnum_unsupported =
    const KeyAssumptionEventStatusEnum._('unsupported');
const KeyAssumptionEventStatusEnum _$keyAssumptionEventStatusEnum_broken =
    const KeyAssumptionEventStatusEnum._('broken');

KeyAssumptionEventStatusEnum _$keyAssumptionEventStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'solid':
      return _$keyAssumptionEventStatusEnum_solid;
    case 'caveated':
      return _$keyAssumptionEventStatusEnum_caveated;
    case 'unsupported':
      return _$keyAssumptionEventStatusEnum_unsupported;
    case 'broken':
      return _$keyAssumptionEventStatusEnum_broken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KeyAssumptionEventStatusEnum>
_$keyAssumptionEventStatusEnumValues =
    BuiltSet<KeyAssumptionEventStatusEnum>(const <KeyAssumptionEventStatusEnum>[
      _$keyAssumptionEventStatusEnum_solid,
      _$keyAssumptionEventStatusEnum_caveated,
      _$keyAssumptionEventStatusEnum_unsupported,
      _$keyAssumptionEventStatusEnum_broken,
    ]);

const KeyAssumptionEventPreviousStatusEnum
_$keyAssumptionEventPreviousStatusEnum_solid =
    const KeyAssumptionEventPreviousStatusEnum._('solid');
const KeyAssumptionEventPreviousStatusEnum
_$keyAssumptionEventPreviousStatusEnum_caveated =
    const KeyAssumptionEventPreviousStatusEnum._('caveated');
const KeyAssumptionEventPreviousStatusEnum
_$keyAssumptionEventPreviousStatusEnum_unsupported =
    const KeyAssumptionEventPreviousStatusEnum._('unsupported');
const KeyAssumptionEventPreviousStatusEnum
_$keyAssumptionEventPreviousStatusEnum_broken =
    const KeyAssumptionEventPreviousStatusEnum._('broken');

KeyAssumptionEventPreviousStatusEnum
_$keyAssumptionEventPreviousStatusEnumValueOf(String name) {
  switch (name) {
    case 'solid':
      return _$keyAssumptionEventPreviousStatusEnum_solid;
    case 'caveated':
      return _$keyAssumptionEventPreviousStatusEnum_caveated;
    case 'unsupported':
      return _$keyAssumptionEventPreviousStatusEnum_unsupported;
    case 'broken':
      return _$keyAssumptionEventPreviousStatusEnum_broken;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<KeyAssumptionEventPreviousStatusEnum>
_$keyAssumptionEventPreviousStatusEnumValues =
    BuiltSet<KeyAssumptionEventPreviousStatusEnum>(
      const <KeyAssumptionEventPreviousStatusEnum>[
        _$keyAssumptionEventPreviousStatusEnum_solid,
        _$keyAssumptionEventPreviousStatusEnum_caveated,
        _$keyAssumptionEventPreviousStatusEnum_unsupported,
        _$keyAssumptionEventPreviousStatusEnum_broken,
      ],
    );

Serializer<KeyAssumptionEventStatusEnum>
_$keyAssumptionEventStatusEnumSerializer =
    _$KeyAssumptionEventStatusEnumSerializer();
Serializer<KeyAssumptionEventPreviousStatusEnum>
_$keyAssumptionEventPreviousStatusEnumSerializer =
    _$KeyAssumptionEventPreviousStatusEnumSerializer();

class _$KeyAssumptionEventStatusEnumSerializer
    implements PrimitiveSerializer<KeyAssumptionEventStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyAssumptionEventStatusEnum];
  @override
  final String wireName = 'KeyAssumptionEventStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumptionEventStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  KeyAssumptionEventStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => KeyAssumptionEventStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$KeyAssumptionEventPreviousStatusEnumSerializer
    implements PrimitiveSerializer<KeyAssumptionEventPreviousStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'caveated': 'caveated',
    'unsupported': 'unsupported',
    'broken': 'broken',
  };

  @override
  final Iterable<Type> types = const <Type>[
    KeyAssumptionEventPreviousStatusEnum,
  ];
  @override
  final String wireName = 'KeyAssumptionEventPreviousStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    KeyAssumptionEventPreviousStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  KeyAssumptionEventPreviousStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => KeyAssumptionEventPreviousStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$KeyAssumptionEvent extends KeyAssumptionEvent {
  @override
  final String assumptionId;
  @override
  final String setId;
  @override
  final String? text;
  @override
  final bool? linchpin;
  @override
  final KeyAssumptionEventStatusEnum status;
  @override
  final KeyAssumptionEventPreviousStatusEnum? previousStatus;
  @override
  final bool? private;
  @override
  final DateTime at;

  factory _$KeyAssumptionEvent([
    void Function(KeyAssumptionEventBuilder)? updates,
  ]) => (KeyAssumptionEventBuilder()..update(updates))._build();

  _$KeyAssumptionEvent._({
    required this.assumptionId,
    required this.setId,
    this.text,
    this.linchpin,
    required this.status,
    this.previousStatus,
    this.private,
    required this.at,
  }) : super._();
  @override
  KeyAssumptionEvent rebuild(
    void Function(KeyAssumptionEventBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeyAssumptionEventBuilder toBuilder() =>
      KeyAssumptionEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyAssumptionEvent &&
        assumptionId == other.assumptionId &&
        setId == other.setId &&
        text == other.text &&
        linchpin == other.linchpin &&
        status == other.status &&
        previousStatus == other.previousStatus &&
        private == other.private &&
        at == other.at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, assumptionId.hashCode);
    _$hash = $jc(_$hash, setId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, linchpin.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, previousStatus.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeyAssumptionEvent')
          ..add('assumptionId', assumptionId)
          ..add('setId', setId)
          ..add('text', text)
          ..add('linchpin', linchpin)
          ..add('status', status)
          ..add('previousStatus', previousStatus)
          ..add('private', private)
          ..add('at', at))
        .toString();
  }
}

class KeyAssumptionEventBuilder
    implements Builder<KeyAssumptionEvent, KeyAssumptionEventBuilder> {
  _$KeyAssumptionEvent? _$v;

  String? _assumptionId;
  String? get assumptionId => _$this._assumptionId;
  set assumptionId(String? assumptionId) => _$this._assumptionId = assumptionId;

  String? _setId;
  String? get setId => _$this._setId;
  set setId(String? setId) => _$this._setId = setId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  bool? _linchpin;
  bool? get linchpin => _$this._linchpin;
  set linchpin(bool? linchpin) => _$this._linchpin = linchpin;

  KeyAssumptionEventStatusEnum? _status;
  KeyAssumptionEventStatusEnum? get status => _$this._status;
  set status(KeyAssumptionEventStatusEnum? status) => _$this._status = status;

  KeyAssumptionEventPreviousStatusEnum? _previousStatus;
  KeyAssumptionEventPreviousStatusEnum? get previousStatus =>
      _$this._previousStatus;
  set previousStatus(KeyAssumptionEventPreviousStatusEnum? previousStatus) =>
      _$this._previousStatus = previousStatus;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  KeyAssumptionEventBuilder() {
    KeyAssumptionEvent._defaults(this);
  }

  KeyAssumptionEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assumptionId = $v.assumptionId;
      _setId = $v.setId;
      _text = $v.text;
      _linchpin = $v.linchpin;
      _status = $v.status;
      _previousStatus = $v.previousStatus;
      _private = $v.private;
      _at = $v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyAssumptionEvent other) {
    _$v = other as _$KeyAssumptionEvent;
  }

  @override
  void update(void Function(KeyAssumptionEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyAssumptionEvent build() => _build();

  _$KeyAssumptionEvent _build() {
    final _$result =
        _$v ??
        _$KeyAssumptionEvent._(
          assumptionId: BuiltValueNullFieldError.checkNotNull(
            assumptionId,
            r'KeyAssumptionEvent',
            'assumptionId',
          ),
          setId: BuiltValueNullFieldError.checkNotNull(
            setId,
            r'KeyAssumptionEvent',
            'setId',
          ),
          text: text,
          linchpin: linchpin,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'KeyAssumptionEvent',
            'status',
          ),
          previousStatus: previousStatus,
          private: private,
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'KeyAssumptionEvent',
            'at',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
