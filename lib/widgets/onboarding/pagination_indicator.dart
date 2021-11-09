import 'package:acumen/helpers/utils.dart';
import 'package:acumen/style/resources.dart';

import '../../global.dart';

class PaginationIndicator extends StatelessWidget {
  const PaginationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(context),
      child:
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
              Indicator(text: "1", isActive: true,),
              SizedBox(width: 10,height: 5, child: Divider( color: Colors.white, thickness: 2,)),
              Indicator(text: "2"),
              SizedBox(width: 10,height: 5, child: Divider( color: Colors.white, thickness: 2,)),
              Indicator(text: "3"),
            ]),
          ),
    );
  }
}

class Indicator extends StatelessWidget {
  final String text;
  final bool isActive;

  const Indicator({Key? key, required this.text,this.isActive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 25,
      height: 25,
      margin: const EdgeInsets.only(left: 4,right: 4),
      decoration: BoxDecoration(
        color: isActive? Colors.white:const Color(0xFF404040),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text ,style: TextStyle(color: isActive? Colors.black:Colors.white,),),
      ),
    );
  }
}
