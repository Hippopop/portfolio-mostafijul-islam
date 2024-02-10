extension DurationExtensions on Duration {
  String get adaptiveDurationString => switch (this) {
        Duration(inMinutes: int min) when min.abs() < 1 => "Just now",
        Duration(inMinutes: int min) when min.abs() < 60 => "$min minutes",
        Duration(inHours: int hour) when hour.abs() < 24 => "$hour hours",
        Duration(inDays: int day) when day.abs() < 7 => "$day days",
        Duration(inDays: int day) when day.abs() < 30 =>
          "${(day / 7).toStringAsFixed(0)}  weeks",
        Duration(inDays: int day) when day.abs() < 365 =>
          "${(day / 30).toStringAsFixed(0)}  months",
        _ => "${(inDays / 365).toStringAsFixed(1)}  years",
      };
}
