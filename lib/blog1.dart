import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog1 extends StatefulWidget {
  const Blog1({Key? key}) : super(key: key);

  @override
  State<Blog1> createState() => _Blog1State();
}

class _Blog1State extends State<Blog1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(86,158,212,10),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.bookmark_outline,
                    size: 20,
                  ),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 20,
                  ),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[200],
                child: IconButton(
                  icon: Icon(
                    Icons.share_outlined,
                    size: 20,
                  ),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ListView(
            children: [
              Text(
                'Hair Truck: Spanish pair’s mobile salon brings styling to cut-off communities',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage('assets/hair4.jpg'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('Eneko Abad '),
                  Text(
                    '16/08/2022',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                        size: 18,
                      ),
                      Text(
                        '6.5K Views',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 18,
                      ),
                      Text(
                        '106 Likes',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.bookmark,
                        color: Colors.grey,
                        size: 18,
                      ),
                      Text(
                        '55 Saves',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image:  NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsW-TSvnBAXOM8GqmnzdUO9DXIbE4HBGjl7Q&usqp=CAU'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'W',
                        style: GoogleFonts.notoSerif(
                            color: Colors.black, fontSize: 32)),
                    TextSpan(
                      text:
                      'hen Natalia López travels to her parents’ village in northern Spain, she packs the essentials: scissors, combs and clippers.As the Zaragoza-based hairdresser strolls the streets of Huesa del Común, an isolated hamlet of 69 residents, her skills are in high demand. “I style my mother’s hair, give my father a haircut, and there are always neighbours who say: ‘Since you’re here, can you cut my hair as well? Or touch up my colour?’”Inspired by the rural clamour for a coiffeur, López and her husband, fellow hairdresser Eneko Abad, last year launched a roving service to make up for the dearth of hair salons in Spain’s villages. The Hair Truck has since grown to encompass three mobile salons that crisscross the northern region of Aragon, offering cuts, washes and colour treatments to about 70 municipalities.“We’re only looking to go to places where there isn’t these kinds of services,” said Abad. “We’re not here to take away work from anyone.”Their modus operandi is simple: after coordinating a monthly visit with local officials or contacts on the ground, the hairdressers show up towing a trailer fitted out with chairs, mirrors and a sink. Residents are invited to make a same-day appointment and the hairdressers stay on site until they make it through the day’s list.',

                      style: GoogleFonts.notoSerif(
                        color: Colors.black,
                        fontSize: 18,
                        height: 1.7,
                        wordSpacing: 2,

                        textStyle: TextStyle(
                          overflow: TextOverflow.fade,

                        )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}