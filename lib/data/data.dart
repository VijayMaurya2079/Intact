import 'package:intact_app/Models/Questions.dart';

class DummyData {
  Future<List<Questions>> questionList() {
    final List<Questions> list = [
      Questions("Which is your Favorite Country to Travel", 156847),
      Questions("Which is your Favorite Sports?", 854271),
      Questions("Which is your Favorite Country to Travel", 156847),
      Questions("Which is your Favorite Sports?", 854271),
      Questions("Which is your Favorite Country to Travel?", 854271),
      Questions("Which is your Favorite School?", 854271),
      Questions("Which is your Favorite College?", 854271),
      Questions("Which is your Favorite Hotal?", 854271),
      Questions("Which is your Favorite Radio Station?", 854271),
      Questions("Which is your Favorite Park in Lucknow?", 854271),
      Questions("Which is your Favorite Mall?", 854271),
      Questions("Which is your Favorite Broadband Provider?", 854271),
      Questions("Which is your Favorite Cable Provider?", 854271),
      Questions("Which is your Favorite Shopping Mall?", 854271),
      Questions("Which is your Favorite Dental Clinic?", 854271),
      Questions("Which is your Favorite Doctor?", 854271),
      Questions("Which is your Favorite General Store?", 854271),
    ];
    return Future.delayed(Duration(microseconds: 10), () {
      return list;
    });
  }
}

final appData = DummyData();
