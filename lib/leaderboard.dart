class LeaderboardInput {
  static const String PLAYER_STANDING = "PLAYER_STANDINGS";
  static const String STATE_LEADERBOARD = "STATE_LEADERBOARD";

  String? name;
  String leaderBoardType;
  String score;
  String avatar;
  String? state;
  String userRank;
  List<LeaderboardListItem> itemList;

  LeaderboardInput(
      {this.name,
      this.state,
      required this.avatar,
      required this.score,
      required this.itemList,
      required this.leaderBoardType,
      required this.userRank});
}

class LeaderboardListItem {
  String userName;
  String userScore;
  String userAvatar;
  String? userState;

  LeaderboardListItem(
      {required this.userName,
      required this.userAvatar,
      required this.userScore,
      this.userState});
}
