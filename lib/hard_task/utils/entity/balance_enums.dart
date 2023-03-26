/// enum для видов валют и их названий
enum CurrencyTypes {
  money('монет:', '💸'),
  crystal('\nкристаллов:', '💎');

  const CurrencyTypes(
    this.currencyName,
    this.currencyIcon,
  );

  final String currencyName;
  final String currencyIcon;
}
