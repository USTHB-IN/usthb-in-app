part of '../home_screen.dart';

class OpportunitiesWidget extends StatelessWidget {
  const OpportunitiesWidget({super.key});

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
            ],
          ),
          BlocBuilder<OpportunitiesCubit, OpportunitiesState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => Column(
                  children: List.generate(
                    2,
                    (index) => const OpportunitiesContentShimmer(),
                  ),
                ),
                loaded: (opportunities) => Column(
                  children: List.generate(
                    2,
                    (index) => OpportunitiesContent(
                        title: opportunities[index].title,
                        description: opportunities[index].description,
                        link: opportunities[index].link,
                        type: opportunities[index].type,
                        imgPath: opportunities[index].imgPath,
                        club: opportunities[index].club,
                        clubLogo: opportunities[index].clubLogo),
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

class OpportunitiesContent extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final OpportunitiesType type;
  final String imgPath;
  final String club;
  final String clubLogo;
  const OpportunitiesContent(
      {super.key,
      required this.title,
      required this.description,
      required this.link,
      required this.type,
      required this.imgPath,
      required this.club,
      required this.clubLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.sp,
      height: 475.sp,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        border: kContainerBorder,
        color: kWhite,
      ),
      child: Column(
        children: [
          CustomImage(
            uri: link,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 14.sp),
                Text(
                  type.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: kLightBlue, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 14.sp),
                Row(
                  children: [
                    CustomImage(
                        uri: clubLogo,
                        imageBuilder: (context, imageProvider) => Container(
                              width: 40.sp,
                              height: 40.sp,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: kContainerBorderClub,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                    SizedBox(width: 10.sp),
                    Text(
                      club,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                SizedBox(height: 14.sp),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 14.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    InkWell(
                      onTap: () async {
                        await launchUrl(Uri.parse(link));
                      },
                      child: Text(
                        'See more.',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: kLightBlue,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OpportunitiesContentShimmer extends StatelessWidget {
  const OpportunitiesContentShimmer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.sp,
      height: 475.sp,
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        border: kContainerBorder,
        color: kWhite,
      ),
      child: Column(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              height: 230.sp,
              width: 335.sp,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 30.sp,
                    width: 200.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 14.sp),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 21.sp,
                    width: 70.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 14.sp),
                Row(
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 40.sp,
                        width: 40.sp,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 24.sp,
                        width: 90.sp,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.sp),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 90.sp,
                    width: 250.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
