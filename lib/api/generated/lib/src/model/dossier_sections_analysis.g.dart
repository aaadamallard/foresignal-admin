// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dossier_sections_analysis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DossierSectionsAnalysisStatusEnum _$dossierSectionsAnalysisStatusEnum_ok =
    const DossierSectionsAnalysisStatusEnum._('ok');
const DossierSectionsAnalysisStatusEnum
    _$dossierSectionsAnalysisStatusEnum_empty =
    const DossierSectionsAnalysisStatusEnum._('empty');
const DossierSectionsAnalysisStatusEnum
    _$dossierSectionsAnalysisStatusEnum_unavailable =
    const DossierSectionsAnalysisStatusEnum._('unavailable');
const DossierSectionsAnalysisStatusEnum
    _$dossierSectionsAnalysisStatusEnum_notInstalled =
    const DossierSectionsAnalysisStatusEnum._('notInstalled');

DossierSectionsAnalysisStatusEnum _$dossierSectionsAnalysisStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ok':
      return _$dossierSectionsAnalysisStatusEnum_ok;
    case 'empty':
      return _$dossierSectionsAnalysisStatusEnum_empty;
    case 'unavailable':
      return _$dossierSectionsAnalysisStatusEnum_unavailable;
    case 'notInstalled':
      return _$dossierSectionsAnalysisStatusEnum_notInstalled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DossierSectionsAnalysisStatusEnum>
    _$dossierSectionsAnalysisStatusEnumValues = BuiltSet<
        DossierSectionsAnalysisStatusEnum>(const <DossierSectionsAnalysisStatusEnum>[
  _$dossierSectionsAnalysisStatusEnum_ok,
  _$dossierSectionsAnalysisStatusEnum_empty,
  _$dossierSectionsAnalysisStatusEnum_unavailable,
  _$dossierSectionsAnalysisStatusEnum_notInstalled,
]);

Serializer<DossierSectionsAnalysisStatusEnum>
    _$dossierSectionsAnalysisStatusEnumSerializer =
    _$DossierSectionsAnalysisStatusEnumSerializer();

class _$DossierSectionsAnalysisStatusEnumSerializer
    implements PrimitiveSerializer<DossierSectionsAnalysisStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'notInstalled': 'not-installed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'empty': 'empty',
    'unavailable': 'unavailable',
    'not-installed': 'notInstalled',
  };

  @override
  final Iterable<Type> types = const <Type>[DossierSectionsAnalysisStatusEnum];
  @override
  final String wireName = 'DossierSectionsAnalysisStatusEnum';

  @override
  Object serialize(
          Serializers serializers, DossierSectionsAnalysisStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DossierSectionsAnalysisStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DossierSectionsAnalysisStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DossierSectionsAnalysis extends DossierSectionsAnalysis {
  @override
  final DossierSectionsAnalysisStatusEnum status;
  @override
  final String? message;
  @override
  final DossierSectionsOverviewLinks? links;
  @override
  final DossierSectionsOverviewFacets? facets;
  @override
  final bool? truncated;
  @override
  final BuiltList<ObjectEnvelope>? findings;
  @override
  final BuiltList<ObjectEnvelope>? hypothesisSets;
  @override
  final BuiltList<ObjectEnvelope>? assessments;

  factory _$DossierSectionsAnalysis(
          [void Function(DossierSectionsAnalysisBuilder)? updates]) =>
      (DossierSectionsAnalysisBuilder()..update(updates))._build();

  _$DossierSectionsAnalysis._(
      {required this.status,
      this.message,
      this.links,
      this.facets,
      this.truncated,
      this.findings,
      this.hypothesisSets,
      this.assessments})
      : super._();
  @override
  DossierSectionsAnalysis rebuild(
          void Function(DossierSectionsAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DossierSectionsAnalysisBuilder toBuilder() =>
      DossierSectionsAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DossierSectionsAnalysis &&
        status == other.status &&
        message == other.message &&
        links == other.links &&
        facets == other.facets &&
        truncated == other.truncated &&
        findings == other.findings &&
        hypothesisSets == other.hypothesisSets &&
        assessments == other.assessments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, facets.hashCode);
    _$hash = $jc(_$hash, truncated.hashCode);
    _$hash = $jc(_$hash, findings.hashCode);
    _$hash = $jc(_$hash, hypothesisSets.hashCode);
    _$hash = $jc(_$hash, assessments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DossierSectionsAnalysis')
          ..add('status', status)
          ..add('message', message)
          ..add('links', links)
          ..add('facets', facets)
          ..add('truncated', truncated)
          ..add('findings', findings)
          ..add('hypothesisSets', hypothesisSets)
          ..add('assessments', assessments))
        .toString();
  }
}

class DossierSectionsAnalysisBuilder
    implements
        Builder<DossierSectionsAnalysis, DossierSectionsAnalysisBuilder> {
  _$DossierSectionsAnalysis? _$v;

  DossierSectionsAnalysisStatusEnum? _status;
  DossierSectionsAnalysisStatusEnum? get status => _$this._status;
  set status(DossierSectionsAnalysisStatusEnum? status) =>
      _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DossierSectionsOverviewLinksBuilder? _links;
  DossierSectionsOverviewLinksBuilder get links =>
      _$this._links ??= DossierSectionsOverviewLinksBuilder();
  set links(DossierSectionsOverviewLinksBuilder? links) =>
      _$this._links = links;

  DossierSectionsOverviewFacetsBuilder? _facets;
  DossierSectionsOverviewFacetsBuilder get facets =>
      _$this._facets ??= DossierSectionsOverviewFacetsBuilder();
  set facets(DossierSectionsOverviewFacetsBuilder? facets) =>
      _$this._facets = facets;

  bool? _truncated;
  bool? get truncated => _$this._truncated;
  set truncated(bool? truncated) => _$this._truncated = truncated;

  ListBuilder<ObjectEnvelope>? _findings;
  ListBuilder<ObjectEnvelope> get findings =>
      _$this._findings ??= ListBuilder<ObjectEnvelope>();
  set findings(ListBuilder<ObjectEnvelope>? findings) =>
      _$this._findings = findings;

  ListBuilder<ObjectEnvelope>? _hypothesisSets;
  ListBuilder<ObjectEnvelope> get hypothesisSets =>
      _$this._hypothesisSets ??= ListBuilder<ObjectEnvelope>();
  set hypothesisSets(ListBuilder<ObjectEnvelope>? hypothesisSets) =>
      _$this._hypothesisSets = hypothesisSets;

  ListBuilder<ObjectEnvelope>? _assessments;
  ListBuilder<ObjectEnvelope> get assessments =>
      _$this._assessments ??= ListBuilder<ObjectEnvelope>();
  set assessments(ListBuilder<ObjectEnvelope>? assessments) =>
      _$this._assessments = assessments;

  DossierSectionsAnalysisBuilder() {
    DossierSectionsAnalysis._defaults(this);
  }

  DossierSectionsAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _links = $v.links?.toBuilder();
      _facets = $v.facets?.toBuilder();
      _truncated = $v.truncated;
      _findings = $v.findings?.toBuilder();
      _hypothesisSets = $v.hypothesisSets?.toBuilder();
      _assessments = $v.assessments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DossierSectionsAnalysis other) {
    _$v = other as _$DossierSectionsAnalysis;
  }

  @override
  void update(void Function(DossierSectionsAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DossierSectionsAnalysis build() => _build();

  _$DossierSectionsAnalysis _build() {
    _$DossierSectionsAnalysis _$result;
    try {
      _$result = _$v ??
          _$DossierSectionsAnalysis._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'DossierSectionsAnalysis', 'status'),
            message: message,
            links: _links?.build(),
            facets: _facets?.build(),
            truncated: truncated,
            findings: _findings?.build(),
            hypothesisSets: _hypothesisSets?.build(),
            assessments: _assessments?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'facets';
        _facets?.build();

        _$failedField = 'findings';
        _findings?.build();
        _$failedField = 'hypothesisSets';
        _hypothesisSets?.build();
        _$failedField = 'assessments';
        _assessments?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DossierSectionsAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
