import 'package:flutter/material.dart';
import 'package:food/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  void _selectMeal() {}

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    print(meal.title.length);
    return InkWell(
      onTap: _selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      color: Colors.black54,
                    ),
                    width: 250,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6),
                      Text('${meal.duration} min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text(meal.complexityText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text(meal.costText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
