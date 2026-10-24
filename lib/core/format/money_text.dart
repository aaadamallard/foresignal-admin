/// US dollar amounts, and the reason a paid social platform is capped where
/// it is: X has a monthly USD cap of its own (`SocialSpend.monthlyCapUsd`,
/// the platform setting) and its source has another (`Budget.monthlyCapUsd`,
/// set with `updateSource`). The backend refuses calls at whichever is lower.
library;

/// `$25`, or `$12.50` when [amount] has cents.
String usdText(num amount) =>
    amount == amount.roundToDouble() ? '\$${amount.round()}' : '\$${amount.toStringAsFixed(2)}';

/// `platform $25 / source $25 — stricter applies`, or `null` unless both
/// [platformCap] and [sourceCap] are set.
String? capReasonText({required num? platformCap, required num? sourceCap}) {
  if (platformCap == null || sourceCap == null) {
    return null;
  }
  return 'platform ${usdText(platformCap)} / source ${usdText(sourceCap)} — stricter applies';
}
