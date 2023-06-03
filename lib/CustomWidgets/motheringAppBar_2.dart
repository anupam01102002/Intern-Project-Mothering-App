import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:mothering_app/Screens/Shopping%20Section%20Screen/shopping.dart';

class MotheringAppBar_1 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Colors.white,
            // Add profile icon image here
            // backgroundImage: AssetImage('assets/profile_image.png'),
            // Use the above line if you have a custom profile image
            child: Icon(
              Icons.person,
              size: 20,
              color: Color.fromRGBO(124, 218, 252, 1),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'All',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ],
      ),
      
      actions: <Widget>[
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: -3, end: -1),
          badgeContent: Text('3'),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()),
              );
            },
          ),
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: -3, end: -1),
          badgeContent: Text('3'),
          child: IconButton(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(Icons.notifications),
            onPressed: () {
              // Add your notifications icon functionality here
            },
          ),
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: -3, end: -1),
          badgeContent: Text('3'),
          child: IconButton(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            onPressed: () {
              // Add your favorites icon functionality here
            },
          ),
        ),
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: -3, end: -1),
          badgeContent: Text('3'),
          child: IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add your cart icon functionality here
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
