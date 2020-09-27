import 'package:ittjeenotes/Services/Settings.dart';
import 'package:sqflite/sqflite.dart';

String baseDatabasePath = "";
Database settingDatabase;

fetchDatabase() async {
  baseDatabasePath = await getDatabasesPath();

  await fetchSettingsDatabase();
}

fetchSettingsDatabase() async {
  settingDatabase = await openDatabase(baseDatabasePath + "/iitjee", version: 1,
      onCreate: (Database db, int version) async {
    await db.execute(
      'CREATE TABLE IF NOT EXISTS settings (id VARCHAR(20) PRIMARY KEY, value BOOLEAN)',
    );
  });

  try {
    await settingDatabase
        .execute("INSERT INTO settings VALUES('showQuote', 'true')");
  } catch (e) {}
  try {
    await settingDatabase
        .execute("INSERT INTO settings VALUES('helpStudy', 'true')");
  } catch (e) {}
  try {
    await settingDatabase
        .execute("INSERT INTO settings VALUES('showNews', 'false')");
  } catch (e) {}

  List<Map> results = await settingDatabase.rawQuery('SELECT * FROM settings');
  Map<String, bool> preference = {};
  results.forEach((setting) {
    preference[setting["id"]] = setting["value"] == "true" ? true : false;
  });
  preferences.add(preference);
}
