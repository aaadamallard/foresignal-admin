import 'package:flutter/material.dart';

/// The admin palette. The dark palette is sampled from
/// `design/ForeSignal Admin screens.png`; the light palette carries the same
/// roles for daylight use. Widgets read it with `AdminPalette.of(context)`,
/// never from constants, so both themes render every screen.
@immutable
class AdminPalette extends ThemeExtension<AdminPalette> {
  /// Creates a palette.
  const AdminPalette({
    required this.background,
    required this.sidebar,
    required this.sidebarSelected,
    required this.card,
    required this.input,
    required this.border,
    required this.primary,
    required this.primaryText,
    required this.tonal,
    required this.text,
    required this.muted,
    required this.ok,
    required this.warning,
    required this.error,
    required this.info,
    required this.neutral,
    required this.okPanel,
    required this.danger,
  });

  /// The dark palette (the mocks).
  static const AdminPalette dark = AdminPalette(
    background: Color(0xFF0A111A),
    sidebar: Color(0xFF060B12),
    sidebarSelected: Color(0xFF0E2139),
    card: Color(0xFF0F1B27),
    input: Color(0xFF111D2B),
    border: Color(0xFF1C2B3B),
    primary: Color(0xFF1885FB),
    primaryText: Color(0xFF4DA3FF),
    tonal: Color(0xFF132E53),
    text: Color(0xFFE6EDF5),
    muted: Color(0xFF8C9AAB),
    ok: Color(0xFF1ECF6C),
    warning: Color(0xFFE69920),
    error: Color(0xFFE5484D),
    info: Color(0xFF4DA3FF),
    neutral: Color(0xFF8C9AAB),
    okPanel: Color(0xFF0A2624),
    danger: Color(0xFFD9363E),
  );

  /// The light palette: the same roles, contrast-checked on white.
  static const AdminPalette light = AdminPalette(
    background: Color(0xFFF3F6F9),
    sidebar: Color(0xFFFFFFFF),
    sidebarSelected: Color(0xFFE4EEFC),
    card: Color(0xFFFFFFFF),
    input: Color(0xFFF6F8FB),
    border: Color(0xFFDAE1E9),
    primary: Color(0xFF1677F2),
    primaryText: Color(0xFF1264CF),
    tonal: Color(0xFFE3EDFC),
    text: Color(0xFF111A24),
    muted: Color(0xFF5B6878),
    ok: Color(0xFF0F8F48),
    warning: Color(0xFFB36B00),
    error: Color(0xFFCC2B33),
    info: Color(0xFF1264CF),
    neutral: Color(0xFF6B7785),
    okPanel: Color(0xFFE7F6EE),
    danger: Color(0xFFD02F37),
  );

  /// The window background behind the content area.
  final Color background;

  /// The sidebar background.
  final Color sidebar;

  /// The selected sidebar item's pill.
  final Color sidebarSelected;

  /// Cards and panels.
  final Color card;

  /// Text fields and table header rows.
  final Color input;

  /// Card and divider borders.
  final Color border;

  /// The primary action color (filled buttons, selected tab).
  final Color primary;

  /// Primary-colored text (selected nav label, breadcrumb links).
  final Color primaryText;

  /// The tonal button background (row "Edit" buttons, count pills).
  final Color tonal;

  /// Primary text.
  final Color text;

  /// Secondary text (labels, captions).
  final Color muted;

  /// Healthy / confirmed / active.
  final Color ok;

  /// Needs attention / degraded.
  final Color warning;

  /// Failed / refused / not set.
  final Color error;

  /// Informational.
  final Color info;

  /// Off / unknown / draft.
  final Color neutral;

  /// The tinted background of a success panel.
  final Color okPanel;

  /// Destructive buttons.
  final Color danger;

  /// The palette of the nearest theme (dark if the theme has none).
  static AdminPalette of(BuildContext context) =>
      Theme.of(context).extension<AdminPalette>() ?? AdminPalette.dark;

  @override
  AdminPalette copyWith() => this;

  @override
  AdminPalette lerp(ThemeExtension<AdminPalette>? other, double t) {
    if (other is! AdminPalette) {
      return this;
    }
    Color mix(Color a, Color b) => Color.lerp(a, b, t)!;
    return AdminPalette(
      background: mix(background, other.background),
      sidebar: mix(sidebar, other.sidebar),
      sidebarSelected: mix(sidebarSelected, other.sidebarSelected),
      card: mix(card, other.card),
      input: mix(input, other.input),
      border: mix(border, other.border),
      primary: mix(primary, other.primary),
      primaryText: mix(primaryText, other.primaryText),
      tonal: mix(tonal, other.tonal),
      text: mix(text, other.text),
      muted: mix(muted, other.muted),
      ok: mix(ok, other.ok),
      warning: mix(warning, other.warning),
      error: mix(error, other.error),
      info: mix(info, other.info),
      neutral: mix(neutral, other.neutral),
      okPanel: mix(okPanel, other.okPanel),
      danger: mix(danger, other.danger),
    );
  }
}

/// The dark admin theme (the mocks).
ThemeData buildAdminTheme() => buildAdminThemeFor(Brightness.dark);

/// The light admin theme.
ThemeData buildAdminLightTheme() => buildAdminThemeFor(Brightness.light);

/// Builds the admin theme for [brightness] from its [AdminPalette].
ThemeData buildAdminThemeFor(Brightness brightness) {
  final p = brightness == Brightness.dark ? AdminPalette.dark : AdminPalette.light;
  final scheme = ColorScheme.fromSeed(seedColor: p.primary, brightness: brightness).copyWith(
    primary: p.primary,
    onPrimary: Colors.white,
    secondary: p.primaryText,
    surface: p.card,
    onSurface: p.text,
    onSurfaceVariant: p.muted,
    surfaceContainerHighest: p.input,
    outline: p.border,
    outlineVariant: p.border,
    error: p.error,
  );
  final base = ThemeData(colorScheme: scheme, useMaterial3: true, brightness: brightness);
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
  const buttonPadding = EdgeInsets.symmetric(horizontal: 18, vertical: 14);
  OutlineInputBorder outline(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color),
  );
  return base.copyWith(
    extensions: <ThemeExtension<dynamic>>[p],
    scaffoldBackgroundColor: p.background,
    visualDensity: VisualDensity.compact,
    textTheme: base.textTheme.copyWith(
      headlineSmall: base.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
      titleMedium: base.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
    ),
    cardTheme: CardThemeData(
      color: p.card,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: p.border),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: p.input,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      border: outline(p.border),
      enabledBorder: outline(p.border),
      focusedBorder: outline(p.primary),
      hintStyle: TextStyle(color: p.muted),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: p.primary,
        foregroundColor: Colors.white,
        shape: shape,
        padding: buttonPadding,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: p.text,
        side: BorderSide(color: p.border),
        shape: shape,
        padding: buttonPadding,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: p.primaryText, shape: shape),
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: p.primaryText, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: const WidgetStatePropertyAll<Color>(Colors.white),
      trackColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected) ? p.ok : p.neutral.withValues(alpha: 0.5),
      ),
      trackOutlineColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: p.text,
      unselectedLabelColor: p.muted,
      indicatorColor: p.primary,
      dividerColor: p.border,
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
    ),
    dividerTheme: DividerThemeData(color: p.border, space: 1),
    dataTableTheme: DataTableThemeData(
      headingRowHeight: 40,
      dataRowMinHeight: 44,
      dataRowMaxHeight: 52,
      headingTextStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12, color: p.muted),
      dividerThickness: 1,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: p.sidebar,
      indicatorColor: p.sidebarSelected,
    ),
    appBarTheme: AppBarTheme(backgroundColor: p.sidebar, foregroundColor: p.text, elevation: 0),
    tooltipTheme: const TooltipThemeData(waitDuration: Duration(milliseconds: 400)),
  );
}
