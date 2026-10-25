import 'package:flutter/material.dart';

import '../theme.dart';
import 'dropdown_items.dart';

/// A tab label with a count pill, as in "All Sources (27)  Enabled (18)".
class CountTab extends StatelessWidget {
  /// Creates the tab label.
  const CountTab({super.key, required this.label, this.count});

  /// The tab text.
  final String label;

  /// The count; hidden when `null`.
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(label),
          if (count != null) ...<Widget>[
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              decoration: BoxDecoration(
                color: AdminPalette.of(context).tonal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('$count', style: const TextStyle(fontSize: 12)),
            ),
          ],
        ],
      ),
    );
  }
}

/// The mocks' search box ("Search sources…").
class SearchField extends StatelessWidget {
  /// Creates the field.
  const SearchField({super.key, required this.onChanged, this.hint = 'Search…', this.width = 260});

  /// Called with the new query on every keystroke.
  final ValueChanged<String> onChanged;

  /// The placeholder.
  final String hint;

  /// The field width.
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(Icons.search, size: 18, color: AdminPalette.of(context).muted),
        ),
      ),
    );
  }
}

/// One filter option: a value (or `null` for "All …") and its label.
class FilterOption<T> {
  /// Creates the option.
  const FilterOption(this.value, this.label);

  /// The value; `null` means no filter.
  final T? value;

  /// The text shown.
  final String label;
}

/// The mocks' filter dropdown ("All categories ▾").
class FilterDropdown<T> extends StatelessWidget {
  /// Creates the dropdown.
  const FilterDropdown({
    super.key,
    required this.value,
    required this.options,
    required this.onChanged,
    this.width = 170,
  });

  /// The selected value (`null` = the "All" option).
  final T? value;

  /// The options, the "All" option first.
  final List<FilterOption<T>> options;

  /// Called with the chosen value.
  final ValueChanged<T?> onChanged;

  /// The dropdown width.
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: DropdownButtonFormField<T?>(
        initialValue: value,
        isExpanded: true,
        decoration: const InputDecoration(),
        items: withCurrentItem(<DropdownMenuItem<T?>>[
          for (final option in options)
            DropdownMenuItem<T?>(
              value: option.value,
              child: Text(option.label, overflow: TextOverflow.ellipsis),
            ),
        ], value),
        onChanged: onChanged,
      ),
    );
  }
}
