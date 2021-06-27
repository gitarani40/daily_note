import 'package:project_uas/helpers/repository.dart';
import 'package:project_uas/models/mactivity.dart';

class SqliteService {
  Repository _repository;

  SqliteService() {
    _repository = Repository();
  }

  //creating data
  // ignore: non_constant_identifier_names
  Saveacitivty(ActivityModel activity) async {
    return await _repository.inserData('activity', activity.aktifitaskMap());
  }

  //read data from table
  readactivity() async {
    return await _repository.readData('activity');
  }

  //read data dari id yaitu sebagai primary key
  readactivityById(activityId) async {
    return await _repository.readDataById('activity', activityId);
  }

  //update data
  updateactivity(ActivityModel activity) async {
    return await _repository.updateActivity('activity', activity.aktifitaskMap());
  }

  //delete data
  deleteactivity(activityId) async {
    return await _repository.deleteActivity('activity', activityId);
  }
}
