import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/Features/Home/Presentation/Views/Widgets/quran_fehres_list_view_item.dart';

class QuranFehresListView extends StatelessWidget
{
  const QuranFehresListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.115),
        physics: const BouncingScrollPhysics(),
        itemCount: quran.totalSurahCount,
        itemBuilder: (context, index) => QuranFehresListViewItem(surahNumber: index+1)
    );
  }
}