import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.character, {super.key});
  final Character character;
  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          
          // available points
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.star, 
                  color: widget.character.points > 0 ? Colors.yellow : Colors.grey,
                ),
                const SizedBox(width: 20,),
                const StyledText("Stats points available: "),
                const Expanded(child: SizedBox()),
                StyledHeading(widget.character.points.toString())
              ],
            ),
          ),

          // stats table
          Container(
            padding: const EdgeInsets.all(10),
            color: AppColors.secondaryColor.withOpacity(0.5),
            // decoration: BoxDecoration(color: AppColors.secondaryColor.withOpacity(0.5)),
            child:  Table(
              children: widget.character.statsAsFormattedList.map((stat){
                return TableRow(
                  children: [
                    // stat title 
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: StyledHeading(stat['title']!)
                    ),

                    // stat value 
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: StyledHeading(stat['value']!)
                    ), 

                    // Icon Increase
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            widget.character.increaseStat(stat['title']!);
                          });
                        }, 
                        icon: Icon(Icons.arrow_upward, color: AppColors.textColor,)
                      )
                    ),
                    // Icon Decrease
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            widget.character.decreaseStat(stat['title']!);
                          });
                        }, 
                        icon: Icon(Icons.arrow_downward, color: AppColors.textColor,)
                      )
                    ),
                  ]
                );
              }).toList()
            )
          ) 
          
        ],
      ),
    );
  }
}