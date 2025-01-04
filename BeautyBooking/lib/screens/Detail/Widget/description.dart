import 'package:flutter/material.dart';

import '../../../constan/constans.dart';

class Description extends StatefulWidget {
  final String description;
  final Map<String, String> workingHours; // مواعيد العمل

  const Description({
    super.key,
    required this.description,
    required this.workingHours, // يتم تمرير مواعيد العمل هنا
  });

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool showDescription = true; // حالة التبديل بين الوصف ومواعيد العمل

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showDescription = true; // عرض الوصف
                  });
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: showDescription ? kprimaryColor : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: showDescription ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showDescription = false; // عرض مواعيد العمل
                  });
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: !showDescription ? kprimaryColor : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Salon hours",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: !showDescription ? Colors.white : Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        if (showDescription)
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.workingHours.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entry.key, // اليوم
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      entry.value, // مواعيد العمل
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
      ],
    );
  }
}
