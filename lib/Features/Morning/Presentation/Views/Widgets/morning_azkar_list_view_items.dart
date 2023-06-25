import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:quran_app/Core/Utils/assets.dart';
import 'package:quran_app/Core/Utils/styles.dart';
import '../../../../../constants.dart';

class MorningAzkarListViewItems extends StatefulWidget
{
  const MorningAzkarListViewItems({super.key, required this.index});
  final int index;

  @override
  State<MorningAzkarListViewItems> createState() => _MorningAzkarListViewItemsState();
}

class _MorningAzkarListViewItemsState extends State<MorningAzkarListViewItems>
{
  late String zekr;
  late int zekrReputation;
  late int theIndex;
  final _boxAzkar = Hive.box('Azkar');

  @override
  void initState()
  {
    super.initState();
    zekr = AssetsData.morningAzkar[widget.index];
    zekrReputation = AssetsData.morningAzkarReputation[widget.index];
    theIndex = widget.index;
  }

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: papayaWhip,
      child: SizedBox(
        width: double.infinity,
        child: ListTile(
          title: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

              Text(
                zekr,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: Styles.styleOfIntroText,
              ),

              const SizedBox(height: 20),

              Center(
                child: GestureDetector(
                  onTap: ()
                  {
                    if(zekrReputation != 0)
                    {
                      --zekrReputation;
                      setState((){});

                      if(zekrReputation == 0 && theIndex == 31)
                      {
                        _boxAzkar.put(theIndex, true);

                        AwesomeDialog(
                          context: context,
                          animType: AnimType.scale,
                          dialogType: DialogType.success,

                          body: const Center(
                            child: Text(
                            'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
                            style: TextStyle(fontStyle: FontStyle.italic),
                            )
                          ),

                          title: 'This is Ignored',
                          desc:   'This is also Ignored',
                          btnOkOnPress: (){},
                        ).show();

                        setState((){});
                      }

                      else if(zekrReputation == 0 && theIndex != 31)
                      {
                        _boxAzkar.put(theIndex, true);
                      }
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(color: fawn, borderRadius: BorderRadius.circular(25)),
                    height: 60,
                    width: 120,
                    child: Row(
                      children: [
                        const Spacer(),

                        CircleAvatar(
                          radius: 25,
                          backgroundColor: burntUmber,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: ghostWhite,
                            child: _boxAzkar.get(theIndex) == true ? const Icon(FontAwesomeIcons.solidCircleCheck, color: Colors.green) : Text('$zekrReputation', style: TextStyle(fontSize: 20, fontFamily: 'Poppins', color: lightBrown)),
                          ),
                        ),

                        VerticalDivider(color: ghostWhite, indent: 10, endIndent: 10),

                        const Text('تِكْرَارْ', style: TextStyle(fontSize: 20)),

                        const Spacer()
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
