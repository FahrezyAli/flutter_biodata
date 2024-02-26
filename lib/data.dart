import 'package:biodata/main.dart';
import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  final String rowName;
  final String rowDesc;

  const Data(this.rowName, this.rowDesc, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defaultEdge,
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.primary, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text.rich(
          TextSpan(
            text: rowName,
            style: const TextStyle(fontSize: 11.0),
            children: <TextSpan>[
              TextSpan(
                text: "\n$rowDesc",
                style: const TextStyle(fontSize: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClickableData extends StatelessWidget {
  final String rowName;
  final String rowDesc;
  final StatelessWidget destination;

  const ClickableData(this.rowName, this.rowDesc, this.destination,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.primary, width: 2.0),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text.rich(
              TextSpan(
                text: rowName,
                style: const TextStyle(fontSize: 11.0),
                children: <TextSpan>[
                  TextSpan(
                    text: "\n$rowDesc",
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FillableData extends StatelessWidget {
  final String rowName;

  const FillableData(this.rowName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defaultEdge,
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.primary, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          children: [
            Text(
              "$rowName\n",
              style: const TextStyle(fontSize: 11.0),
            ),
            const TextField(
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
