import 'package:flutter/material.dart';

class BottomNavigationBar_ShoppingScreen extends StatefulWidget {
  @override
  _BottomNavigationBar_ShoppingScreenState createState() =>
      _BottomNavigationBar_ShoppingScreenState();
}

class _BottomNavigationBar_ShoppingScreenState
    extends State<BottomNavigationBar_ShoppingScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Show modal screen based on selected index
    switch (index) {
      case 0:
        _showGenderModal();
        break;
      case 1:
        _showAgeModal();
        break;
      case 2:
        _showSortModal();
        break;
      case 3:
        _showFilterModal();
        break;
    }
  }

  void _showGenderModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Adjust the height as needed
          child: Center(
            child: Text('Gender Modal'),
          ),
        );
      },
    );
  }

  void _showAgeModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Adjust the height as needed
          child: Center(
            child: Text('Age Modal'),
          ),
        );
      },
    );
  }

  void _showSortModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Adjust the height as needed
          child: Center(
            child: Text('Sort Modal'),
          ),
        );
      },
    );
  }

  void _showFilterModal() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Adjust the height as needed
          child: Center(
            child: Text('Filter Modal'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final barHeight = screenHeight * 0.06;

    return SizedBox(
      height: barHeight,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: BottomNavBarItem(
                icon: null,
                text: 'GENDER',
                isSelected: _selectedIndex == 0,
                onTap: () => _onItemTapped(0),
              ),
            ),
            Container(
              height: double.infinity,
              width: 1.0,
              color: Colors.grey,
            ),
            Expanded(
              child: BottomNavBarItem(
                icon: null,
                text: 'AGE',
                isSelected: _selectedIndex == 1,
                onTap: () => _onItemTapped(1),
              ),
            ),
            Container(
              height: double.infinity,
              width: 1.0,
              color: Colors.grey,
            ),
            Expanded(
              child: BottomNavBarItem(
                icon: Icons.sort,
                text: 'SORT',
                isSelected: _selectedIndex == 2,
                onTap: () => _onItemTapped(2),
              ),
            ),
            Container(
              height: double.infinity,
              width: 1.0,
              color: Colors.grey,
            ),
            Expanded(
              child: BottomNavBarItem(
                icon: Icons.filter_list,
                text: 'FILTER',
                isSelected: _selectedIndex == 3,
                onTap: () => _onItemTapped(3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomNavBarItem({
    Key? key,
    this.icon,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: isSelected ? Colors.black : Colors.grey,
                ),
                // const SizedBox(width: 2),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 12,
                    color: isSelected
                        ? Colors.black
                        : const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 2.0,
            ),
            child: Text(
              'Select',
              style: TextStyle(
                fontSize: 10,
                color: isSelected ? Colors.grey : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
