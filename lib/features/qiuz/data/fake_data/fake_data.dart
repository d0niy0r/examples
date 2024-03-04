class FakeData {
  final String title;
  final String quiz;
  final List<String> variants;
  final int correctIndex;

  FakeData({
    required this.title,
    required this.correctIndex,
    required this.quiz,
    required this.variants,
  });

  static List<FakeData> list = [
    FakeData(title: "1", correctIndex: 1, quiz: "Men kimman", variants: ["Sen", "Men", "U", "Bu"]),
    FakeData(title: "2", correctIndex: 0, quiz: " Sen kimsan", variants: ["Sen", "Men", "U", "Bu"]),
    FakeData(title: "3", correctIndex: 2, quiz: "U kim", variants: ["Sen", "Men", "U", "Bu"]),
    FakeData(title: "4", correctIndex: 3, quiz: "Bu kim yoki nima", variants: ["Sen", "Men", "U", "Bu"]),
  ];
}
