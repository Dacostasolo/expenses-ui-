class BankCardModel {
  final String bankCardNumber;
  final String bankCardType;
  final String bankCardTypeName;
  final double bankCardBalance;
  final String sourceOfFunds;

  BankCardModel({
    required this.bankCardTypeName,
    required this.bankCardNumber,
    required this.bankCardType,
    required this.bankCardBalance,
    required this.sourceOfFunds,
  });
}

List<BankCardModel> _setBankCards() {
  List<BankCardModel> list = [
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "visa",
      bankCardTypeName: "Visa",
      bankCardBalance: 121220.0,
      sourceOfFunds: "Family",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "mastercard",
      bankCardTypeName: "MasterCard",
      bankCardBalance: 104430.0,
      sourceOfFunds: "Salary",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "americanexpress",
      bankCardTypeName: "American Express",
      bankCardBalance: 109930.0,
      sourceOfFunds: "Family",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "discover",
      bankCardTypeName: "Discover",
      bankCardBalance: 1011230.0,
      sourceOfFunds: "Free Lancing",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "jcb",
      bankCardTypeName: "JCB",
      bankCardBalance: 1231100.0,
      sourceOfFunds: "Extended Family",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "dinersclub",
      bankCardTypeName: "Diners Club",
      bankCardBalance: 100323.0,
      sourceOfFunds: "Family",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "unionpay",
      bankCardTypeName: "UnionPay",
      bankCardBalance: 1022320.0,
      sourceOfFunds: "Free Lancing",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "maestro",
      bankCardTypeName: "Maestro",
      bankCardBalance: 102120.0,
      sourceOfFunds: "Inheritance",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "visa",
      bankCardTypeName: "Visa",
      bankCardBalance: 102120.0,
      sourceOfFunds: "Family",
    ),
    BankCardModel(
      bankCardNumber: "123456789",
      bankCardType: "mastercard",
      bankCardTypeName: "MasterCard",
      bankCardBalance: 232100.0,
      sourceOfFunds: "Salary",
    ),
  ];
  return list;
}

List<BankCardModel> get getBankCards {
  return _setBankCards();
}
