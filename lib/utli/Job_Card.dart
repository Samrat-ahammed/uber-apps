import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companeyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  const JobCard(
      {Key? key,
      required this.companeyName,
      required this.jobTitle,
      required this.logoImagePath,
      required this.hourlyRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.green[200],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    child: Image.asset(logoImagePath),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text("Part time"),
                      color: Colors.grey[500],
                    ),
                  )
                ],
              ),
              Text(jobTitle),
              Text(hourlyRate.toString())
            ],
          ),
        ),
      ),
    );
  }
}
