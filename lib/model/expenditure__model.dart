import 'package:intl/intl.dart';

class Expenditure {
  final String id;
  final String title;
  final String description;
  final String amount;
  final String date;
  final String iconUrl;
  final String time;

  Expenditure({
    required this.id,
    required this.iconUrl,
    required this.title,
    required this.description,
    required this.amount,
    required this.date,
    required this.time,
  });

  Map toJson(Expenditure expenditure) {
    return {
      'id': expenditure.id,
      'title': expenditure.title,
      'amount': expenditure.amount,
      'description': expenditure.description,
      'date': expenditure.date,
      'iconUrl': expenditure.iconUrl,
    };
  }

  Expenditure fromJson(Map json) {
    return Expenditure(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      amount: json['amount'] as String,
      date: DateFormat.yMMMMd().format(
        DateTime.parse(json['date']),
      ),
      iconUrl: json['iconUrl'] as String,
      time: json['time'] as String,
    );
  }
}

List<Expenditure> _setExpenditure() {
  List<Expenditure> list = [
    Expenditure(
      id: "1",
      title: "Dribble",
      description: "Food for the family",
      amount: "100.00",
      date: DateFormat.yM("en_US").format(DateTime.now()),
      iconUrl: "asset/svg/dribbble-svgrepo-com.svg",
      time: DateFormat.Hm().format(DateTime.now()),
    ),
    Expenditure(
      id: "2",
      title: "Envato",
      description: "Food for the family",
      amount: "100.00",
      date: DateFormat.yM("en_US").format(DateTime.now()),
      iconUrl: "asset/svg/envato-svgrepo-com.svg",
      time: DateFormat.Hm().format(DateTime.now()),
    ),
    Expenditure(
      id: "3",
      title: "Figma",
      description: "Food for the family",
      amount: "100.00",
      date: DateFormat.yM("en_US").format(DateTime.now()),
      iconUrl: "asset/svg/figma-svgrepo-com.svg",
      time: DateFormat.Hm().format(DateTime.now()),
    ),
    Expenditure(
      id: "3",
      title: "Figma",
      description: "Food for the family",
      amount: "100.00",
      date: DateFormat.yM("en_US").format(DateTime.now()),
      iconUrl: "asset/svg/figma-svgrepo-com.svg",
      time: DateFormat.Hm().format(DateTime.now()),
    ),
  ];
  return list;
}

List<Expenditure> get getExpenditure {
  return _setExpenditure();
}
