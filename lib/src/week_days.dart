part of 'widget.dart';

/// Week day names line.
class WeekDays extends StatelessWidget {
  const WeekDays({
    Key? key,
    this.weekNames = const <String>['S', 'M', 'T', 'W', 'T', 'F', 'S'],
    this.style,
    this.weekDayViewHeight,
  })  : assert(weekNames.length == 7, '`weekNames` must have length 7'),
        super(key: key);

  /// Week day names.
  final List<String> weekNames;
  final double? weekDayViewHeight;

  /// Text style.
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: weekDayViewHeight,
      child: DefaultTextStyle(
        style: style!,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(weekNames.length, (index) {
            return DateBox(
              child: Text(weekNames[index]),
            );
          }),
        ),
      ),
    );
  }
}
