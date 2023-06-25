import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../constants.dart';

class NightAzkarListViewItems extends StatefulWidget
{
  const NightAzkarListViewItems({super.key, required this.index});
  final int index;

  @override
  State<NightAzkarListViewItems> createState() => _NightAzkarListViewItemsState();
}

class _NightAzkarListViewItemsState extends State<NightAzkarListViewItems>
{
  late String zekr;
  late int zekrReputation;
  late int theIndex;
  final _boxAzkar = Hive.box('Azkar');

  @override
  void initState()
  {
    super.initState();
    zekr = AssetsData.nightAzkar[widget.index];
    zekrReputation = AssetsData.nightAzkarReputation[widget.index];
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

                      if(zekrReputation == 0)
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
