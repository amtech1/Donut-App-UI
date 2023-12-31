import 'package:flutter/material.dart';
class DonutTile extends StatelessWidget {
  final String donutFlavour;
    final String donutPrice;
    final double borderRadius=12;
final donutColor;
final String imageName;
  const DonutTile({super.key, required this.donutFlavour, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
    
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: Column(
          
    
          children: [

            Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(color: donutColor[100],
                  borderRadius: BorderRadius.circular(borderRadius)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text('\$'+donutPrice,style: TextStyle(color: donutColor[800],fontWeight: FontWeight.bold,fontSize: 16,),)),
              ],
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 16),
            child: Image.asset(imageName),),
            Text(donutFlavour,
            style: TextStyle(
              color: donutColor,fontWeight: FontWeight.bold,fontSize: 16
            ),),
            const SizedBox(height: 4,),
            Text('Dunkin',style: TextStyle(color: Colors.grey[700]),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                Icon(Icons.favorite,color: Colors.pink[400],),
                
                Icon(Icons.add,color: Colors.grey[400],),
              ],
              ),
            )

          ],
          
        ),
      ),
    );
  }
}