import 'package:flutter/material.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homescreen.dart';



class FactScreen extends StatefulWidget{
  const FactScreen({super.key});
  @override
  State<FactScreen> createState()=>_FactScreenState();
}
class _FactScreenState extends State<FactScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  GradientAppBar(
      title: const Text("Blood Donation"),
     
          gradient: const LinearGradient(
            colors: [
              Color(0xffB81736),
              Color(0xff281537),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        
    leading: BackButton(onPressed:(){
      Navigator.pop(
         context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
    
    )
      ),
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
            Text(" Facts about blood needs",
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24
              ),
            ),
            ]
            ),
             const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Every year our nation requires about 5",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Crore units of blood, out of which only a ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "meager 2.5 Crore units of blood are ",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "available.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The gift of blood is the gift of life. There is",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "no substitute for human blood.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            Image.asset("assets/threelives.jpg",
            height: 200,
            width: 500,),
            /*const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Every two seconds someone needs blood.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),*/
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A total of 30 million blood components are transfused each year.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The average red blood cell transfusion is\napproximately 3 pints",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The blood type most often requested by\n hospitals is Type O.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sickle cell patients can require frequent blood transfusions throughout their lives.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "More than 1 million new people are\ndiagnosed with cancer each year. Many of\nthem will need blood, sometimes daily\nduring their chemotherapy treatment",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A single car accident victim can require as many as 100 units of blood",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
          const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
            Text(" Facts about the blood supply",
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24
              ),
            ),
            ]
            ),
            const SizedBox(
              height: 10,
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blood cannot be manufactured - it can only come from generous donors.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            Image.asset("assets/volunteerdonor.jpg",
            height: 150,
            width: 500,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type O-negative blood (red cells) can be \ntransfused to patients of all blood types.\nIt is always in great demand and often in short supply.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type AB-positive plasma can be\ntransfused to patients of all other blood\ntypes. AB plasma is also usually in short supply.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Facts about the blood donation process",
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24
              ),
            ),
             const SizedBox(
              height: 10,
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Donating blood is a safe process. A sterile\nneedle is used only once for each donor\nand them discarded",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blood donation is a simple four-step process: registration, medical history and mini-physical, donation and refreshments.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Every blood donor is given a mini-physical, checking the donor's temperature, blood pressure, pulse and hemoglobin to ensure it is safe for the donor to give blood",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The actual blood donation typically takes less than 10-12 minutes. The entire process, from the time you arrive to the time you leave, takes about half an hour. ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The average adult has about 10 units of\nblood in his body. Roughly 1 unit is given during a donation",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             Image.asset("assets/56days.jpg",
            height: 150,
            width: 500,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A healthy donor may donate red blood cells every 56 days, or double red cells every 112 days.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All donated blood is tested for HIV, hepatitis B and C, syphilis and other infectious diseases before it can be transfused to patients.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
             ),
              const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
            Text("Facts about blood and its\ncomponents",
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24
              ),
            ),
            ]
            ),
            const SizedBox(
              height: 10,
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blood makes up about 7 percent of your body's weight.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "There are four types of transfusable products that can be derived from blood: red cells, platelets, plasma and cryoprecipitate. Typically, two or three of these are produced from a unit of donated whole blood - hence each donation can help save up to three lives.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             Image.asset("assets/plasma.jpg",
            height: 150,
            width: 500,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Donors can give either whole blood or specific blood components only.The process of donating specific blood components -red cells,plasma or platelets - is called apheresis",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "One transfusion dose of platelets can be obtained through one apheresis donation of platelets or by combining the platelets derived from five whole blood donations.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Donated platelets must be used within five days of collection",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Healthy bone marrow makes a constant supply of red cells, plasma and platelets. The body will replenish the elements given during a blood donation some in a matter of hours and others in a matter of weeks.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
            Text("Facts about donors",
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24
              ),
            ),
            ]
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The number one reason donors say they give blood is because they want to help others.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Two most common reasons cited by people who don't give blood are: 'Never thought about it' and 'I don't like needles.'",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "One donation can help save the lives of up to three people",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             Image.asset("assets/transfused.jpg",
            height: 150,
            width: 500,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "If you began donating blood at age 18 and donated every 90 days until you reached 60, you would have donated 30 gallons of blood, potentially helping save more than 500 lives!",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Only 7 percent of people in India have O-negative blood type. O-negative blood type donors are universal donors as their blood can be given to people of all blood types.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Type O-negative blood is needed in emergencies before the patient's blood type is known and with newborns who need blood.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thirty-five percent of people have Type O (positive or negative) blood.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\u2022",
                  style: TextStyle(fontSize: 30),
                ), //bullet text
                SizedBox(width: 10), //space between bullet and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "0.4 percent of people have AB-blood type. AB-type blood donors are universal donors of plasma, which is often used in emergencies, for newborns and for patients requiring massive transfusions.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ), //text
              ],
            ),
             //space between bullet and text
               
          ]

        ) 
        ),
      
      );
    
  }
}
                        