// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_timeline_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_version =
    const DossierSectionsTimelineItemsInnerKindEnum._('version');
const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_alert =
    const DossierSectionsTimelineItemsInnerKindEnum._('alert');
const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_finding =
    const DossierSectionsTimelineItemsInnerKindEnum._('finding');
const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_situationLog =
    const DossierSectionsTimelineItemsInnerKindEnum._('situationLog');
const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_annotation =
    const DossierSectionsTimelineItemsInnerKindEnum._('annotation');
const DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnum_other =
    const DossierSectionsTimelineItemsInnerKindEnum._('other');

DossierSectionsTimelineItemsInnerKindEnum
_$dossierSectionsTimelineItemsInnerKindEnumValueOf(String name) {
  switch (name) {
    case 'version':
      return _$dossierSectionsTimelineItemsInnerKindEnum_version;
    case 'alert':
      return _$dossierSectionsTimelineItemsInnerKindEnum_alert;
    case 'finding':
      return _$dossierSectionsTimelineItemsInnerKindEnum_finding;
    case 'situationLog':
      return _$dossierSectionsTimelineItemsInnerKindEnum_situationLog;
    case 'annotation':
      return _$dossierSectionsTimelineItemsInnerKindEnum_annotation;
    case 'other':
      return _$dossierSectionsTimelineItemsInnerKindEnum_other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsTimelineItemsInnerKindEnum>
_$dossierSectionsTimelineItemsInnerKindEnumValues =
    BuiltSet<DossierSectionsTimelineItemsInnerKindEnum>(
      const <DossierSectionsTimelineItemsInnerKindEnum>[
        _$dossierSectionsTimelineItemsInnerKindEnum_version,
        _$dossierSectionsTimelineItemsInnerKindEnum_alert,
        _$dossierSectionsTimelineItemsInnerKindEnum_finding,
        _$dossierSectionsTimelineItemsInnerKindEnum_situationLog,
        _$dossierSectionsTimelineItemsInnerKindEnum_annotation,
        _$dossierSectionsTimelineItemsInnerKindEnum_other,
      ],
    );

Serializer<DossierSectionsTimelineItemsInnerKindEnum>
_$dossierSectionsTimelineItemsInnerKindEnumSerializer =
    _$DossierSectionsTimelineItemsInnerKindEnumSerializer();

class _$DossierSectionsTimelineItemsInnerKindEnumSerializer
    implements PrimitiveSerializer<DossierSectionsTimelineItemsInnerKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'version': 'version',
    'alert': 'alert',
    'finding': 'finding',
    'situationLog': 'situation-log',
    'annotation': 'annotation',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'version': 'version',
    'alert': 'alert',
    'finding': 'finding',
    'situation-log': 'situationLog',
    'annotation': 'annotation',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[
    DossierSectionsTimelineItemsInnerKindEnum,
  ];
  @override
  final String wireName = 'DossierSectionsTimelineItemsInnerKindEnum';

  @override
  Object serialize(
    Serializers serializers,
    DossierSectionsTimelineItemsInnerKindEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DossierSectionsTimelineItemsInnerKindEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DossierSectionsTimelineItemsInnerKindEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DossierSectionsTimelineItemsInner
    extends DossierSectionsTimelineItemsInner {
  @override
  final DateTime at;
  @override
  final DossierSectionsTimelineItemsInnerKindEnum kind;
  @override
  final String? ref;
  @override
  final String title;
  @override
  final String? severity;

  factory _$DossierSectionsTimelineItemsInner([
    void Function(DossierSectionsTimelineItemsInnerBuilder)? updates,
  ]) => (DossierSectionsTimelineItemsInnerBuilder()..update(updates))._build();

  _$DossierSectionsTimelineItemsInner._({
    required this.at,
    required this.kind,
    this.ref,
    required this.title,
    this.severity,
  }) : super._();
  @override
  DossierSectionsTimelineItemsInner rebuild(
    void Function(DossierSectionsTimelineItemsInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DossierSectionsTimelineItemsInnerBuilder toBuilder() =>
      DossierSectionsTimelineItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsTimelineItemsInner &&
        at == other.at &&
        kind == other.kind &&
        ref == other.ref &&
        title == other.title &&
        severity == other.severity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, at.hashCode);
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, ref.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, severity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsTimelineItemsInner')
          ..add('at', at)
          ..add('kind', kind)
          ..add('ref', ref)
          ..add('title', title)
          ..add('severity', severity))
        .toString();
  }
}

class DossierSectionsTimelineItemsInnerBuilder
    implements
        Builder<
          DossierSectionsTimelineItemsInner,
          DossierSectionsTimelineItemsInnerBuilder
        > {
  _$DossierSectionsTimelineItemsInner? _$v;

  DateTime? _at;
  DateTime? get at => _$this._at;
  set at(DateTime? at) => _$this._at = at;

  DossierSectionsTimelineItemsInnerKindEnum? _kind;
  DossierSectionsTimelineItemsInnerKindEnum? get kind => _$this._kind;
  set kind(DossierSectionsTimelineItemsInnerKindEnum? kind) =>
      _$this._kind = kind;

  String? _ref;
  String? get ref => _$this._ref;
  set ref(String? ref) => _$this._ref = ref;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _severity;
  String? get severity => _$this._severity;
  set severity(String? severity) => _$this._severity = severity;

  DossierSectionsTimelineItemsInnerBuilder() {
    DossierSectionsTimelineItemsInner._defaults(this);
  }

  DossierSectionsTimelineItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _at = $v.at;
      _kind = $v.kind;
      _ref = $v.ref;
      _title = $v.title;
      _severity = $v.severity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsTimelineItemsInner other) {
    _$v = other as _$DossierSectionsTimelineItemsInner;
  }

  @override
  void update(
    void Function(DossierSectionsTimelineItemsInnerBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsTimelineItemsInner build() => _build();

  _$DossierSectionsTimelineItemsInner _build() {
    final _$result =
        _$v ??
        _$DossierSectionsTimelineItemsInner._(
          at: BuiltValueNullFieldError.checkNotNull(
            at,
            r'DossierSectionsTimelineItemsInner',
            'at',
          ),
          kind: BuiltValueNullFieldError.checkNotNull(
            kind,
            r'DossierSectionsTimelineItemsInner',
            'kind',
          ),
          ref: ref,
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'DossierSectionsTimelineItemsInner',
            'title',
          ),
          severity: severity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
