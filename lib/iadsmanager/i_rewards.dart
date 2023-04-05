import '../rewards/rewards_item.dart';

typedef OnUserEarnedReward = void Function(RewardsItem rewardsItem);

class IRewards {
  final OnUserEarnedReward? onUserEarnedReward;

  IRewards({this.onUserEarnedReward});
}
