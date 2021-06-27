import 'package:flutter/material.dart';
import 'package:project_uas/helpers/SqliteService.dart';
import 'package:project_uas/models/mactivity.dart';

class EntryForm extends StatefulWidget {
  const EntryForm({Key key}) : super(key: key);

  @override
  _EntryFormState createState() => _EntryFormState();
}

class _EntryFormState extends State<EntryForm> {
  var activityNameController = TextEditingController();
  var activityDurasiController = TextEditingController();
  var _activity = ActivityModel();
  var _activitykservice = SqliteService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Note"),
        backgroundColor: Colors.black,
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: activityNameController,
              decoration: InputDecoration(hintText: "Name", labelText: "Name"),
            ),
            TextField(
              controller: activityDurasiController,
              decoration: InputDecoration(hintText: 'Description', labelText: 'Description'),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                      color: Colors.red,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.white),
                          ))),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                      color: Colors.blue,
                      child: TextButton(
                          onPressed: () async {
                            _activity.nama = activityNameController.text;
                            _activity.durasi = activityDurasiController.text;
                            _activitykservice.Saveacitivty(_activity);

                            Navigator.pop(context);
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
                          ))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
