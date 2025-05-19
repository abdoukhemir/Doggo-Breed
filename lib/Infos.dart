import 'package:flutter/material.dart';
import 'menu.dart';
void main() {
  runApp(const MainMenu());
}

class InfosPage extends StatelessWidget {
  const InfosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Doggo_Breed",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 96, 162, 134),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              
            ),
          ),
          elevation: 0,
          
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover, // Adjust the image's fit within the container
            ),
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildDiseaseCard(
                "Downy Mildew :",
                "Downy mildew is a disease of the foliage, caused by a fungus-like (Oomycete) organism. It is spread from plant to plant by airborne spores. It is a disease of wet weather as infection is favoured by prolonged leaf wetness.",
                "https://images.squarespace-cdn.com/content/v1/56bb6533c2ea51c6431244f6/1599151391871-NVDCI57UYQQW2FEKIWUD/Topical+view+of+cucumber+downy+mildew+IMG_2508.jpg",
              ),
              _buildDiseaseCard(
                "Black Spot :",
                "Black spot is the most serious disease of roses. It is caused by a fungus, Diplocarpon rosae, which infects the leaves and greatly reduces plant vigour. Expect to see leaf markings from spring, which will persist as long as the leaves remain on the plant.",
                "https://www.nature-and-garden.com/wp-content/uploads/sites/4/2022/11/black-spot-leaves-tar-spot.jpg",
              ),
              _buildDiseaseCard(
                "Fusarium Wilt :",
                "Fusarium wilts are common vascular diseases that clog and eventually destroy water conducting tissues,resulting in wilt symptoms and eventual plant death.",
                "https://cdn.britannica.com/77/183477-050-B48BF328/Tomato-plant-fusarium-disease.jpg?w=400&h=300&c=crop",
              ),
              _buildDiseaseCard(
                "Powdery Mildew :",
                "Powdery mildew is a fungal disease that affects a wide range of plants. Powdery mildew diseases are caused by many different species of ascomycete fungi in the order Erysiphales. Powdery mildew is one of the easier plant diseases to identify, as its symptoms are quite distinctive.",
                "https://frontierlandscaping.com/wp-content/uploads/2021/04/bigstock-powdery-mildew-on-norway-maple-280022359.jpg",
              ),
              _buildDiseaseCard(
                "Rust :",
                "rust diseases present as orange rust on plants in the form of spots, patches or raised blisters. Rust spots on leaves can also come in a variety of shades from bright yellow to dark brown. The colour of the rust spots can darken as the disease matures and the seasons change from spring through to autumn.",
                "https://media.sciencephoto.com/b2/75/00/42/b2750042-800px-wm.jpg",
              ),
              _buildDiseaseCard(
                "Sooty Mold :",
                "The presence of sooty mould fungi usually indicates that a plant has become affected by a sap-sucking insect. Sooty moulds do not attack the plant directly, but their growth is unsightly and can reduce plant vigour by preventing photosynthesis.",
                "https://gardenerspath.com/wp-content/uploads/2020/09/Aphids-attacking-leaves-and-spreading-sooty-mold-fungus.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDiseaseCard(String title, String subtitle, String imageUrl) {
  return Container(
    width: 350,
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 9 / 9, // Desired aspect ratio (e.g., 16:9)
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20.0), bottom: Radius.circular(0.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 10.0),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}