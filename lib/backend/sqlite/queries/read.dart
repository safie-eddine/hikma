import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN MAIN SEARCH
Future<List<MainSearchRow>> performMainSearch(
  Database database, {
  String? search,
}) {
  final query = '''
set mainSearch = ${search}
SELECT * FROM albokhary WHERE alhadith like ${search}
''';
  return _readQuery(database, query, (d) => MainSearchRow(d));
}

class MainSearchRow extends SqliteRow {
  MainSearchRow(Map<String, dynamic> data) : super(data);
}

/// END MAIN SEARCH
