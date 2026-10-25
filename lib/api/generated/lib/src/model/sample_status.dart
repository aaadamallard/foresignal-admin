//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sample_status.g.dart';

/// ok; no-coverage: outside the grid/footprint or a no-coverage code (\"outside product coverage; this is not evidence of clear weather\"); no-data: inside coverage but nodata; stale: frame older than maxGap relative to the requested time; unavailable: product disabled, source failing, no frame or frame expired
class SampleStatus extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const SampleStatus ok = _$ok;
  @BuiltValueEnumConst(wireName: r'no-coverage')
  static const SampleStatus noCoverage = _$noCoverage;
  @BuiltValueEnumConst(wireName: r'no-data')
  static const SampleStatus noData = _$noData;
  @BuiltValueEnumConst(wireName: r'stale')
  static const SampleStatus stale = _$stale;
  @BuiltValueEnumConst(wireName: r'unavailable')
  static const SampleStatus unavailable = _$unavailable;
  @BuiltValueEnumConst(wireName: r'stale-position')
  static const SampleStatus stalePosition = _$stalePosition;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SampleStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SampleStatus> get serializer => _$sampleStatusSerializer;

  const SampleStatus._(String name) : super(name);

  static BuiltSet<SampleStatus> get values => _$values;
  static SampleStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SampleStatusMixin = Object with _$SampleStatusMixin;
