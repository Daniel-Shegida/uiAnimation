enum CurrencyTypes {
  money('монет: 💸'),
  crystal('кристаллов: 💎');


  const CurrencyTypes(this.currencyName);

  final String currencyName;
}