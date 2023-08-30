class Duck {
  final String duckName;
  final String duckDescription;

  Duck({required this.duckName, required this.duckDescription});

  factory Duck.fromJson(Map<String, dynamic> json) {
    return Duck(
      duckName: json['duckName'],
      duckDescription: json['duckDescription'],
    );
  }
}