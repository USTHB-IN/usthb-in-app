part of '../home_screen.dart';

class HomeworksWidget extends StatelessWidget {
  const HomeworksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sp),
      child: Column(
        children: [
          Row(
            children: [
              const SideRectangle(color: kDarkerBlue),
              SizedBox(width: 8.sp),
              Text(
                'Upcoming Homeworks Deadline',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          BlocBuilder<HomeworksCubit, HomeworkState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => Column(
                  children: List.generate(
                    2,
                    (index) => const HomeworksContentShimmer(),
                  ),
                ),
                loaded: (homeworks) => Column(
                  children: List.generate(
                    2,
                    (index) => HomeworksContent(
                      title: homeworks[index].name,
                      content: homeworks[index].description,
                      date: homeworks[index].deadline,
                    ),
                  ),
                ),
                error: (e) => Center(
                  child: Text(e),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class HomeworksContent extends StatelessWidget {
  final String title;
  final String content;
  final String date;
  const HomeworksContent(
      {super.key,
      required this.title,
      required this.content,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SideRectangle(color: kDarkerBlueTransparent),
        SizedBox(width: 8.sp),
        Expanded(
            child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: 2.sp),
            Text(
              content,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'See more.',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: kBlue,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: DateTime.now()
                                .difference(DateTime.parse(date))
                                .inDays ==
                            0
                        ? kYellow
                        : DateTime.now()
                                    .difference(DateTime.parse(date))
                                    .inDays >=
                                1
                            ? kGreen
                            : kRed,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.sp, vertical: 5.sp),
                  child: Text(
                    DateTime.now().difference(DateTime.parse(date)).inDays == 0
                        ? 'Today'
                        : DateTime.now()
                                    .difference(DateTime.parse(date))
                                    .inDays ==
                                1
                            ? 'Yesterday'
                            : '${DateTime.now().difference(DateTime.parse(date)).inDays} days ago',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            )
          ],
        ))
      ],
    );
  }
}

class HomeworksContentShimmer extends StatelessWidget {
  const HomeworksContentShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SideRectangle(color: kYellowTransparent),
        SizedBox(width: 8.sp),
        Expanded(
            child: Column(
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: 24.sp,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 2.sp),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: 50.sp,
                width: 200.sp,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ))
      ],
    );
  }
}
