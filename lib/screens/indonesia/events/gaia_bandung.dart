import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_trip_application/screens/utils/utils.dart';
import '../../../reusable_widgets/dark_mode.dart';
import '../../../reusable_widgets/side_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class gaiaBandung extends StatefulWidget {
  const gaiaBandung({Key? key}) : super(key: key);

  @override
  State<gaiaBandung> createState() => _gaiaBandung();
}

class _gaiaBandung extends State<gaiaBandung> {
  bool isLiked = false; // State for the like button
  List<String> comments = [
    'Great place!',
    'Love the atmosphere.',
    'Would recommend visiting.',
  ]; // List of comments (you can initialize it with your existing comments)

  @override
  Widget build(BuildContext context) {
    final darkModeProvider = Provider.of<DarkModeExample>(context);
    final isDarkMode = darkModeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('The Gaia Hotel Bandung'),
        backgroundColor: isDarkMode ? Colors.black : const Color(0xFF306550),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isDarkMode
                ? [Colors.black38, Colors.black38]
                : [
              hexStringToColor("F1F9F6"),
              hexStringToColor("D1EEE1"),
              hexStringToColor("AFE1CE"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/indonesia/hotels/Gaia Hotel 1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: YourImageWidget(), // Uncomment and replace with your image widget
                ),
                const SizedBox(height: 16),
                Text(
                  'The Gaia Hotel Bandung',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF306550),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Spanning over 2.3 hectares and perched on a valley facing luscious mountains with a breathtaking view of the city, The Gaia Hotel Bandung offers an experience beyond mere 5-star elegance. With multiple facilities, a myriad of activities and events, and art installations, there is always something for you to see, do and enjoy during your stay.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            isLiked ? Icons.favorite : Icons.favorite_border,
                            color: isLiked ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                        ),
                        Text(
                          'Like',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          ' 4.8 / 5', // Replace with your actual rating value
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SocialMediaButton(
                          icon: Icons.facebook,
                          onPressed: () {
                            // Add Facebook button action
                          },
                        ),
                        SizedBox(width: 8),
                        SocialMediaButton(
                          icon: FontAwesomeIcons.twitter,
                          onPressed: () {
                            // Add Twitter button action
                          },
                        ),
                        SizedBox(width: 8),
                        SocialMediaButton(
                          icon: FontAwesomeIcons.instagram,
                          onPressed: () {
                            // Add Instagram button action
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    // Add action for the button
                  },
                  style: ElevatedButton.styleFrom(
                    primary: isDarkMode ? Colors.blueGrey : const Color(0xFF306550),
                  ),
                  child: Text('Add to Favorite'),
                ),
                const SizedBox(height: 16),
                Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (_) => imageDialog(
                              'Comfortable Suite',
                              'assets/indonesia/hotels/Gaia Hotel 2.jpeg',
                              context,
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300], // Placeholder color, replace with your image
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/indonesia/hotels/Gaia Hotel 2.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: YourImageWidget(), // Uncomment and replace with your image widget
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (_) => imageDialog(
                              'Outdoor Swimming Pool',
                              'assets/indonesia/hotels/Gaia Hotel 3.jpeg',
                              context,
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300], // Placeholder color, replace with your image
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/indonesia/hotels/Gaia Hotel 4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: YourImageWidget(), // Uncomment and replace with your image widget
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (_) => imageDialog(
                              'Extravagant Hotel Lobby',
                              'assets/indonesia/hotels/Gaia Hotel 3.jpeg',
                              context,
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300], // Placeholder color, replace with your image
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/indonesia/hotels/Gaia Hotel 3.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: YourImageWidget(), // Uncomment and replace with your image widget
                        ),
                      ),
                    ),
                  ],
                ),
                // Divider(
                //   color: Colors.grey[400],
                //   thickness: 2,
                // ),
                const SizedBox(height: 16),
                Text(
                  'More Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text('Check-in time: 3:00 PM\nCheck-out time: 12:00 PM'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Address: Jl. Dr. Setiabudi No.430, Ledeng, Kec. Cidadap, Kota Bandung, Jawa Barat 40143, Indonesia'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Contact: +62 22 20280780'),
                ),
                // Comment Section
                const SizedBox(height: 16),
                Text(
                  'Comments',
                  style: TextStyle(
                    color: const Color(0xFF306550),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.comment),
                      title: Text(comments[index]),
                    );
                  },
                ),
                // Add a text field and button for users to add new comments
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    style: ElevatedButton.styleFrom(
                      primary: isDarkMode ? Colors.blueGrey : const Color(0xFF306550),
                    );
                    // Implement the logic to add the new comment
                    String newComment = 'New Comment'; // Replace with user input
                    setState(() {
                      comments.add(newComment);
                    });
                  },
                  child: Text('Add Comment'),
                  style: ElevatedButton.styleFrom(
                    primary: isDarkMode ? Colors.blueGrey : const Color(0xFF306550),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const SocialMediaButton({
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: onPressed,
      color: const Color(0xFF306550), // Customize the color as needed
    );
  }
}

Widget imageDialog(text, path, context) {
  return Dialog(
    // backgroundColor: Colors.transparent,
    // elevation: 0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$text',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // IconButton(
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              //   icon: Icon(Icons.close_rounded),
              //   color: Colors.redAccent,
              // ),
            ],
          ),
        ),
        Container(
          width: 220,
          height: 200,
          child: Image.asset(
            '$path',
            fit: BoxFit.cover,
          ),
        ),
      ],
    ),
  );}