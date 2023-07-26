import 'package:btech_induction_2023/data/club.dart';
import 'package:flutter/material.dart';

class ClubsScreen extends StatelessWidget {
  ClubsScreen({super.key});

  Widget buildCard(Club club) => Container(
        margin: const EdgeInsets.only(left: 10),
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    color: const Color(0xFFFAC018),
                    height: 90,
                    width: 90,
                    child: Image.asset(
                      'images/${club.imagePath}',
                      height: 80,
                      width: 80,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    color: const Color(0xFFFAC018),
                    height: 110,
                    width: 20,
                  ),
                ),
              ],
            ),
            Expanded(
              // Use Expanded to make the Column take all remaining space
              child: Container(
                margin: const EdgeInsets.only(left: 20, top: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // Align text to the left
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        club.name,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // Add some spacing between the texts
                    Expanded(
                      // Use Expanded for multi-line wrapping
                      child: SingleChildScrollView(
                        // Wrap with SingleChildScrollView to handle vertical overflow
                        child: Text(
                          club.description,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  List<Club> clubs = [
    Club('s', 's', 's', 'siteLink'),
    Club(
        'DesignHub',
        'DesignHub is a design club and an open community that aims at providing professional exposure to budding product designers. We aim to develop a healthy design culture at IIIT Delhi.',
        'DesignHub.png',
        ''),
    Club(
        'Astronuts',
        'Astronuts is the astronomy club of IIIT Delhi. We aim to enrich the astronomy culture on our campus and provide a home to all fellow students who love space and the stars. We regularly conduct watch parties for interesting celestial events, and trips and other astronomy related events.',
        'Astronuts.png',
        ''),
    Club(
        'Machaan',
        'Machaan is a place where theater aficioanados meet. We at Machaan believe that drama is an art which only a few possess but has a tremendous power of changing the society, it is a constructive force which when used right, can do wonders! We conduct theater and street plays along with drama workshops and aim to make the life here at IIIT-D stress-free.',
        'machaan.png',
        ''),
    Club(
        'Electroholics',
        'Electroholics is a group of hardware enthusiasts from IIIT-Delhi. We believe in the spirit of creativity and open knowledge, and using these to make awesome things.',
        'Electroholics.png',
        ''),
    Club(
        'Finnexia',
        'The Finance Club of IIITD is a student-driven initiative for fostering a culture for Finance among its students. It was established with the purpose of enhancing the financial knowledge of students through various events, activities, workshops and knowledge sharing sessions.',
        'Finnexia.png',
        ''),
    Club(
        'GirlUp Udaan IIITD',
        'GirlUp Udaan aims to help discriminated communities access their inner power to advance their skills, rights, and opportunities everywhere. By creating a safe and supportive space, organising social work and fundraisers, conducting interactive activities and discussions, and putting out informative and fun content on our social media, we aim to bring about a change- one step at a time.',
        'girlup.png',
        ''),
    Club(
        'MadToes',
        'MadToes is the Dance society of IIIT Delhi. Great dancers are not just great because of their techniques, they are great because of their passion! Our club MadToes nourishes the same.',
        'MadToes.png',
        ''),
    Club(
        'MicDrop',
        'MicDrop is the club which appreciates and enhances the humour. We organize events like Stand-up , Make me laugh , Witty questions and many more which gives the students of IIITD to grow in field of comedy along with academics.',
        'MicDrop.png',
        ''),
    Club(
        'Philosoc',
        'Philosoc is the philosophy club of IIIT Delhi. For all the inquisitive minds 😤,we love to think for no reason. We house an avid group of people who love to talk. We got a bomb discord server where we stream movies and documentaries, and a cute book club. Dont miss our sessions! this is not a suggestion but a warning',
        'Philosoc.png',
        ''),
    Club(
        'The 65th Square',
        'Inculcate chess culture in college. Organize regular tournaments in various time formats such as rapid, blitz and bullet. Introduce variants of chess such as Supply, Anti-chess, Chess960. Conduct monthly challenges on our Instagram page.',
        'TheSquare.png',
        ''),
    Club(
        'Salt N Pepper',
        'The club aims to promote good living through the enjoyment of cuisines. The club is focused on providing social activities in a convivial environment. It’s a place where fun, party and food happens and focuses on a healthy yet delicious lifestyle. Through our club, we want to provide students with a platform where they can showcase their love for food and cooking.',
        'saltnpepper.png',
        ''),
    Club(
        'BioBytes',
        'BioBytes aims to promote and work in computational biology and data science by providing guidance and experience towards solving biology/healthcare-related challenges using various elements of data science.',
        'BioBytes.png',
        ''),
    Club(
        'd4rkc0de',
        'We are the official cybersecurity club of IIIT Delhi. Ranked as one of the top 10 Indian CTF Teams on CTFTime, we participate actively in Capture the Flag competitions and hold events that spread knowledge about the domain of cybersecurity while building a fun and competitive environment.',
        'darkcode.png',
        ''),
    Club(
        'Enactus IIITD',
        'Enactus IIITD is a student chapter in the global network of Enactus teams. Enactus is an international nonprofit, and as part of it, we work on social entrepreneurship projects to create a positive impact on the world. At Enactus IIITD, we currently have two projects: Well-Being Adda and Hidayat. ',
        'enactus.png',
        ''),
    Club(
        'Meraki',
        'Meraki is the art society of IIITD. It is for people who love and appreciate art and want to improve in it. We believe that art is an essential aspect of life and education. Here you will find people passionate about art, who will help and guide you in various art forms.',
        'meraki.png',
        ''),
    Club(
        'Muse',
        '"The club aims to: change how fashion is perceived- including but not only restricted to glamour promote fashion as a form of expression and a creative outlet for the students enable the students to portray their individuality and sense of self using fashion verse the students with why and how to dress well.',
        'Muse.png',
        ''),
    Club(
        'Trivialis',
        'We aim to promote the culture and spirit of quizzing at IIIT Delhi by conducting both Intra and Inter-College Quizzes on a wide range of topics like Sports, TV & Movies, Nerd Culture, Tech, Pop Culture, Little Known Facts, Politics and History. We are open and do not have any membership criteria. If the topic interests you, you are welcome to join and participate. ',
        'Trivialis.png',
        ''),
    Club(
        'Évariste',
        'Évariste is the Maths Club of IIITD. The club organises activities like Zero Prerequisite Contests (ZPT), Speed Proving Tournaments (SPT), and Theory Talks. The main aim of the club is to promote Pure Maths and Theoretical Computer Science among students, as well as to have fun while doing so.',
        'evariste.png',
        ''),
    Club(
        'FooBar',
        'The aim of FooBar is to encourage Competitive Programming at our college and develop a very active culture of CP, where everyone can learn from each other. To achieve this, we organize regular events like CodeClasses and ProSorts.',
        'FooBar.png',
        ''),
    Club(
        'LitSoc',
        'One of the largest clubs at IIIT-Delhi, LitSoc is the Literary, Debating and Anime Society of the college. We host a plethora of event covering debating, book clubs, MUNs , poetry, anime, public speaking, writing and a lot more!',
        'litsoc.png',
        ''),
    Club(
        'BYLD',
        'BYLD is the software development club of IIIT Delhi. We are a group of students who love building new stuff. We aim to create and continuously improve the dev culture at IIITD by bringing together passionate individuals who love to collaborate, innovate, create and byld.',
        'byld.png',
        ''),
    Club(
        'Audiobytes',
        'Audiobytes is the music society of IIIT Delhi. We seek to increase the music culture among the students at our college by organizing vocal and instrumental events, and encourage the music enthusiasts to take part in inter-college competitions for the betterment of the individuals as musicians.',
        'audiobytes.png',
        ''),
    Club(
        'Women in Tech',
        'WiT aims to have a close-knit community of women with access to a better network, opportunities and a support system. Through WiT, we want to garner an ecosystem where all the women grow stronger and help their fellow peers grow with them.',
        'WomeninTech.png',
        ''),
    Club(
        'Tasveer',
        'Tasveer is the photography club at IIIT Delhi. Born out of love for walking around, clicking pictures and hogging food, Tasveer aims to nurture the budding talent and photo enthusiasts in the beautiful campus situated in New Delhi.',
        'Tasveer.png',
        ''),
    Club(
        'Lean In IIITD',
        'Lean In IIITD is an initiative motivated by the personal experiences of our core team of female leaders. We hope to establish a community that brings forth opportunities. A community that “leans in” to support each other by sharing stories of success and failures with the hope to inspire others. We wish to provide students with mentorship and a space for their holistic growth in tech and non-tech domains. ',
        'leanin.png',
        ''),
    Club(
        'IEEE Student Chapter',
        'IEEE is the world’s largest technical professional organization dedicated to advancing technology for the benefit of humanity. Our student branch has embraced excellence and even in the years to come, IEEE SB IIITD will continue to create outstanding students, young engineering professionals with a responsibility to advance technology for humanity, moulding ethical and capable leaders for a bright tomorrow.',
        'ieee.png',
        ''),
    Club(
        'ACM Student Chapter',
        '"At the IIIT-Delhi student chapter of ACM, we believe in developing an active and extensive platform where students can gain global exposure to a range of ideas and knowledge that the field of computing has offered. We majorly focus on the following objectives :- -Working towards advancing computing as a science and a profession -Serving as a dynamic hub of activities for the computing fraternity of IIIT Delhi.',
        'acm.png',
        ''),
    Club(
        'OWASP Student Chapter',
        'OWASP is the world’s largest non-profit organisation concerned with software security. At OWASP IIITD, we believe in enabling developers to write better software, and security professionals to make the world’s software more secure. Our purpose is to teach the students about secure coding and encourage better practices while writing code, and we believe you can help advance our',
        'owasp.png',
        '')
  ];



  var heading = [
    'DesignHub',
    'Astronuts',
    'Machaan',
    'Electroholics',
    'Finnexia',
    'GirlUp Udaan IIITD',
    'MadToes',
    'MicDrop',
    'Philosoc',
    'The 65th Square',
    'Salt N Pepper',
    'BioBytes',
    'd4rkc0de',
    'Enactus IIITD',
    'Meraki',
    'Muse',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3DB46F),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return buildCard(clubs[index]);
          },
          itemCount: clubs.length,
        ));
  }
}
