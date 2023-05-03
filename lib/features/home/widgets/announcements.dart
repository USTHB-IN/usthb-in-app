part of '../home_screen.dart';

class AnnouncementsWidget extends StatelessWidget {
  const AnnouncementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.sp),
      child: Column(
        children: [
          Row(
            children: [
              const SideRectangle(color: kYellow),
              SizedBox(width: 8.sp),
              Text(
                'Announcements',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
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
            ],
          ),
          BlocBuilder<AnnouncementsCubit, AnnouncementsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => Column(
                  children: List.generate(
                    2,
                    (index) => const AnnouncementsContentShimmer(),
                  ),
                ),
                loaded: (posts) => Column(
                  children: List.generate(
                    2,
                    (index) => AnnouncementsContent(
                        title: posts[index].title,
                        content: posts[index].content),
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

class AnnouncementsContent extends StatelessWidget {
  final String title;
  final String content;
  const AnnouncementsContent(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SideRectangle(color: kYellowTransparent),
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
          ],
        ))
      ],
    );
  }
}

class AnnouncementsContentShimmer extends StatelessWidget {
  const AnnouncementsContentShimmer({super.key});

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
