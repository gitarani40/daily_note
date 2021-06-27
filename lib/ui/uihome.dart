import 'package:flutter/material.dart';
import 'package:project_uas/helpers/SqliteService.dart';
import 'package:project_uas/models/mactivity.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _activity = ActivityModel();
  var activity;
  var _sqlservice = SqliteService();
  var _editActivityNameController = TextEditingController();
  var _editActivityDescriptionController = TextEditingController();

  // ignore: deprecated_member_use
  List<ActivityModel> _activityList = List<ActivityModel>();
  @override
  void initState() {
    super.initState();
    getAllActtivity();
  }

  getAllActtivity() async {
    // ignore: deprecated_member_use
    _activityList = List<ActivityModel>();
    var activitys = await _sqlservice.readactivity();
    activitys.forEach((activity) {
      setState(() {
        var activityModel = ActivityModel();
        activityModel.nama = activity['nama'];
        activityModel.durasi = activity['durasi'];
        activityModel.id = activity['id'];
        _activityList.add(activityModel);
      });
    });
  }

  // ignore: non_constant_identifier_names
  editBookmark(BuildContext, acitivityId) async {
    activity = await _sqlservice.readactivityById(acitivityId);
    setState(() {
      _editActivityNameController.text = activity[0]['nama'] ?? 'Tidak ada nama';
      _editActivityDescriptionController.text = activity[0]['durasi'] ?? 'Tidak ada durasi';
    });
    editdialog(context);
  }

  editdialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.red,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
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
                          _activity.id = activity[0]['id'];
                          _activity.nama = _editActivityNameController.text;
                          _activity.durasi = _editActivityDescriptionController.text;

                          var result = await _sqlservice.updateactivity(_activity);
                          if (result > 0) {
                            Navigator.pop(context);
                            getAllActtivity();
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
            title: Text('Edit'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _editActivityNameController,
                    decoration:
                        InputDecoration(hintText: "Activity Name", labelText: "Activity"),
                  ),
                  TextField(
                    controller: _editActivityDescriptionController,
                    decoration: InputDecoration(hintText: "Activity Description", labelText: "Description"),
                  )
                ],
              ),
            ),
          );
        });
  }

  deletedialog(BuildContext context, bookmarkId) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.blue,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                    color: Colors.red,
                    child: TextButton(
                        onPressed: () async {
                          var result = await _sqlservice.deleteactivity(bookmarkId);
                          if (result > 0) {
                            Navigator.pop(context);
                            getAllActtivity();
                          }
                        },
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
            title: Text('Are you sure to delete this ?'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text(
            'Daily Note',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), backgroundColor: Colors.purpleAccent,
          onPressed: () {
            formdialog(context);
          }),
      body: ListView.builder(
          itemCount: _activityList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    leading: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          editBookmark(BuildContext, _activityList[index].id);
                        }),
                    title: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(_activityList[index].nama),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                deletedialog(context, _activityList[index].id);
                              })
                        ],
                      ),
                    ),
                    subtitle: Text(_activityList[index].durasi),
                  ),
                ));
          }),
    );
  }
}

formdialog(BuildContext context) {
  var activityNameController = TextEditingController();
  var activityDescriptionController = TextEditingController();
  var _activity = ActivityModel();
  var _activityservice = SqliteService();
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          actions: <Widget>[
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
                        _activity.durasi = activityDescriptionController.text;
                        _activityservice.Saveacitivty(_activity);

                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
          ],
          title: Text('Note'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: activityNameController,
                  decoration: InputDecoration(hintText: "Activity Name", labelText: "Activity"),
                ),
                TextField(
                  controller: activityDescriptionController,
                  decoration: InputDecoration(hintText: 'Activity Description', labelText: 'Description'),
                )
              ],
            ),
          ),
        );
      });
}
