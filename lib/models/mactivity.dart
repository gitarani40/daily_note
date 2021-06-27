class ActivityModel {
  int id;
  String nama;
  String durasi;

  aktifitaskMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id;
    mapping['nama'] = nama;
    mapping['durasi'] = durasi;
    return mapping;
  }
}
