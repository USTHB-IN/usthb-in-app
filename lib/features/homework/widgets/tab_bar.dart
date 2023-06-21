part of '../homework_screen.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabs;
  final Color bgColor;
  final Color selectiveColor;

  const CustomTabBar(
      {super.key,
      required this.tabs,
      this.bgColor = Colors.white,
      this.selectiveColor = Colors.blue});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeworkTypeCubit, String>(
      builder: (context, state) {
        return Container(
          height: 50.sp,
          padding: EdgeInsets.all(1.sp),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: widget.bgColor,
          ),
          child: TabBar(
            onTap: (value) {
              context.read<HomeworkTypeCubit>().changeType(widget.tabs[value]);
            },
            controller: controller,
            padding: EdgeInsets.all(5.sp),
            indicator: BoxDecoration(
              borderRadius: kBorderRadius,
              color: widget.selectiveColor,
            ),
            tabs: List.generate(
                widget.tabs.length,
                (index) => Text(widget.tabs[index],
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: state == widget.tabs[index]
                              ? Colors.white
                              : Colors.black,
                          fontWeight: state == widget.tabs[index]
                              ? FontWeight.w500
                              : FontWeight.w600,
                        ))),
          ),
        );
      },
    );
  }
}
