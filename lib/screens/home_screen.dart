import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gap/gap.dart';
import 'package:gengr/gen/assets.gen.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:gengr/services/adaptive_file/adaptive_file.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "GEN QR",
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            Gap(12),

            /// form
            Container(
              constraints: BoxConstraints(maxWidth: 800),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: TextFormField(
                      controller: valueCtrl,
                      onChanged: onChanged,
                      decoration: InputDecoration(
                        label: Text("YOUR INPUT"),
                      ),
                      onFieldSubmitted: onFieldSubmitted,
                    ),
                  ),
                  Gap(12),
                  SizedBox(
                    width: 100,
                    child: PopupMenuButton(
                        initialValue: image,
                        icon: image == null
                            ? null
                            : Image(
                                image: Svg(image!),
                                width: 25,
                                height: 25,
                              ),
                        onSelected: (v) {
                          setState(() {
                            image = v;
                          });
                        },
                        itemBuilder: (context) => Assets.images.icons.values
                            .map(
                              (e) => PopupMenuItem(
                                value: e.path,
                                enabled: true,
                                child: Container(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: Svg(e.path),
                                        width: 25,
                                        height: 25,
                                      ),
                                      Gap(25),
                                      Text(e.keyName.replaceAll(
                                          RegExp("assets/images/icons/|.svg"),
                                          ""))
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList()),
                  )
                ],
              ),
            ),
            Gap(12),

            /// preview and download
            if (data != null)
              Container(
                constraints: BoxConstraints(maxWidth: 170),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    QrcodePreview(
                      value: data,
                      image: image,
                    ),
                    Gap(12),
                    TextButton(
                        onPressed: () {
                          download();
                        },
                        child: Text("download"))
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  late TextEditingController valueCtrl = TextEditingController(text: "");
  late TextEditingController imageCtrl = TextEditingController(text: "");
  late String? data = null;
  late String? image = null;

  @override
  void setState(VoidCallback fn) {
    if (!mounted) return;
    super.setState(fn);
  }

  @override
  void dispose() {
    valueCtrl.dispose();
    super.dispose();
  }

  onChanged(String v) {
    setState(() {
      data = v.isEmpty ? null : v;
    });
  }

  onFieldSubmitted(String v) {
    setState(() {
      data = v;
    });
  }

  download() async {
    if (data == null) {}
    final qrCode = QrCode.fromData(
      data: data!,
      errorCorrectLevel: QrErrorCorrectLevel.H,
    );

    final qrImage = QrImage(qrCode);

    await qrImage.exportAsImage(
      context,
      size: 512,
      decoration: PrettyQrDecoration(
        image: image == null
            ? null
            : PrettyQrDecorationImage(
                image: Svg(image!),
              ),
      ),
    );
  }
}

class QrcodePreview extends ConsumerWidget {
  final String? value;
  final String? image;
  const QrcodePreview({
    super.key,
    this.value,
    this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (value == null) return Container();

    return PrettyQrView.data(
      data: value!,
      decoration: PrettyQrDecoration(
        image: image == null
            ? null
            : PrettyQrDecorationImage(
                image: Svg(image!),
              ),
      ),
    );
  }
}
