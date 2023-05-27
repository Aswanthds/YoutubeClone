import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipState();
}

class _FilterChipState extends State<FilterChipWidget> {
  List<String> categories = [
    "Videos",
    "Shorts",
    "Live",
    
    
  ];
  String selectedcategory = "Videos";

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 6,
        children: categories
            .map(
              (e) => SizedBox(
                height: 50,
                child: FilterChip(
                  selectedColor: Colors.white,
                  showCheckmark: false,
                  selected: selectedcategory == e,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  label: Padding(
                    padding: const EdgeInsets.only(top: 4.5, bottom: 2.0),
                    child: Text(
                      e,
                      style: TextStyle(
                        color:
                            selectedcategory == e ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                  onSelected: (bool value) {
                    setState(() {
                      selectedcategory = e;
                    });
                  },
                ),
              ),
            )
            .toList());
  }
}
