import '../../../core/helpers/public_imports.dart';

class CounterContainerWidget extends StatefulWidget {
  const CounterContainerWidget({super.key});

  @override
  State<CounterContainerWidget> createState() =>
      _CounterContainerWidgetState();
}

class _CounterContainerWidgetState extends State<CounterContainerWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.darkGrayColor
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCounterButton(Icons.remove, _decrementCounter),
          Text(
            _counter.toString(),
            style: AppTextStyles.font14DarkGrayMedium,
          ),
          _buildCounterButton(Icons.add, _incrementCounter),
        ],
      ),
    );
  }
  Widget _buildCounterButton(IconData icon, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Icon(
        icon,
        size: 20.r
      ),
    );
  }
}
