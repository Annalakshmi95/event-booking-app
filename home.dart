
import 'package:event_bookingapp_1/newfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>decoration=['https://i.pinimg.com/736x/52/be/7e/52be7e7ee9f37e1ac449a460d0c9a95d.jpg',
  'https://thumbs.dreamstime.com/b/wedding-stage-red-gold-themed-indian-115578758.jpg',
  
  'https://c8.alamy.com/comp/2CGNWF9/wedding-or-wedding-reception-sitting-purpose-stage-for-bride-groom-decorated-with-flowers-and-royal-sofa-2CGNWF9.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqqT6sGSPal4SmNhg-JMApgLMJuIcu7ruftd55b7aj3i9i3UotzY1ZFSkihkdCARAsxhE&usqp=CAU',
  'https://i.pinimg.com/originals/04/a9/64/04a96437e83adee669ad27407a2f76a6.jpg',
  'https://i.pinimg.com/originals/b9/4f/fa/b94ffa73d0216ce528371918b3e9f92b.png',
  'https://image.wedmegood.com/resized/540X/uploads/member/1945843/1616481986_Screenshot_from_2021_03_23_12_12_37.png',
  
  'https://i.pinimg.com/originals/79/9c/8a/799c8aa2cdf634a236346c4244db9816.jpg',
  'https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/10/wedding-heart-decoration-wedding.jpg',
  'https://www.whatsappimages.in/wp-content/uploads/2022/08/balloon-decoration-images-png.jpg',
  'https://anilevents.in/wp-content/uploads/2020/05/WhatsApp-Image-2021-05-01-at-2.43.51-PM-18.jpeg',
  'https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img,w_1300,h_650/https://sigaram.co.in/decorations/wp-content/uploads/sites/7/2017/04/Birthday-balloon-Decoration-at-Hotel-Green-Palace-Pondicherry-2-1300x650.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEPQy_d0kvMGfwYWm4b0IVRDGJS2Ai4Zc47und52zVepIZ1ouYYZGq60ouBfHXAmDoXVk&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYdVgrSZ0otH2NxB4jc9xMI-E7p8G23P2uXhSLjB6GMbylAZ-1EfETkqoViHb88yvZJNY&usqp=CAU',
  'https://4.imimg.com/data4/TB/IK/ANDROID-30250968/product-500x500.jpeg',
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body:
      GridView.builder(
          itemCount: decoration.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              
                child: Container(
                  color: Colors.white,
                  child: InkWell(
                        child: Image.network(decoration[index]),
                        onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewfilePage(imgUrl: decoration[index]),));
                              
                        })
                ),
              
            );
          }), 
          );
    
  }
}