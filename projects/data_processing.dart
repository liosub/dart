import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('dart totals.dart ,input file');
    exit(0);
  }
  // run file path
  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  final durationByTag = <String, double>{};
  var totalDuration = 0.0;
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');
    final durationstr = values[3].replaceAll('"', '');
    final duration = double.parse(durationstr);
    final tag = values[5].replaceAll('"', '');
    final previoustotal = durationByTag[tag];
    if (previoustotal == null) {
      durationByTag[tag] = duration;
    } else {
      durationByTag[tag] = previoustotal + duration;
    }
    totalDuration += duration;
  }
  for (var entry in durationByTag.entries) {
    final durationformatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    print('$tag: ${durationformatted}h');
  }
  print('Total duration is' + totalDuration.toString());
}
