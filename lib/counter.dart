import 'f';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;
  @override
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage> {
  Counter _counter = Counter();
  void _incrementCounter() {
    setState(() {
      _counter.increment();
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter.decrement();
    });
  }