import 'package:flutter/material.dart';
import 'package:my_order/constants/constants.dart';
import 'package:my_order/help/widgets/expantion_item.dart';
import 'package:my_order/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class HelpBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(LocaleKeys.help_main_text.tr(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
        ),
        ExpansionItem(title: LocaleKeys.help_title_text.tr(),content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',)
      ],
    );
  }
}
