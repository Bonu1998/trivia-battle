class Edition {
  final String label;
  final String icon;
  final String labelBg;
  final String level;

  const Edition({
    required this.icon,
    required this.label,
    required this.labelBg,
    required this.level,
  });

  static Edition fromJSON(json) => Edition(
      icon: json['icon'],
      label: json['label'],
      labelBg: json['labelBg'],
      level: json['level']);
}
