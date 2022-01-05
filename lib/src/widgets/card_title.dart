import 'package:demo_project/src/utiils/colors.dart';
import 'package:flutter/material.dart';

class CardTitle extends StatefulWidget {
  const CardTitle({Key? key, this.title, this.onTapFavorite}) : super(key: key);
  final String? title;
  final Function? onTapFavorite;

  @override
  _CardTitleState createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
          children:[
            Text(widget.title!,
              style:TextStyle(
                fontWeight: FontWeight.w700,
                fontSize:14,
                color:Colors.white,
              ),),
            Spacer(),
            GestureDetector(
                onTap:(){
                  setState((){
                    select = !select;
                  });
                  widget.onTapFavorite!();
                },
                child:Icon(select == false ? Icons.favorite_border : Icons.favorite_outlined,color:Gradients.colors[2])
            )
          ]
      )
    );
  }
}
