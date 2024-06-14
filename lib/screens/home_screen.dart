import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GEN QR"),
      ),
      body: Column(
        children: [

          /// input
          TextFormField(
            controller: inputCtrl,
            onChanged: onChanged,
            decoration: InputDecoration(label: Text("YOU INPUT")),
          ),

          /// preview and download
        ],
      ),
    );
  }

  late TextEditingController inputCtrl = TextEditingController(text: "");

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }

  @override
  void dispose() {
    inputCtrl.dispose();
    super.dispose();
  }

  onChanged(String v) {
    if (v.isEmpty) return;
  }
}

class QrcodePreview extends ConsumerWidget {
  const QrcodePreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
