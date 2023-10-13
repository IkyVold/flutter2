import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? FullName;
  final String? Email;
  final int? Nomer;
  final String? id;
  final String? address;
  final DateTime? date;

  const ProdukDetail({
    Key? key,
    this.FullName,
    this.Email,
    this.Nomer,
    this.id,
    this.address,
    this.date,
  }) : super(key: key);

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Personal Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Full Name"),
              subtitle: Text(widget.FullName ?? "Not provided"),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text(widget.Email ?? "Not provided"),
            ),
            ListTile(
              title: Text("Nomer"),
              subtitle: Text(widget.Nomer?.toString() ?? "Not provided"),
            ),
            ListTile(
              title: Text("ID"),
              subtitle: Text(widget.id ?? "Not provided"),
            ),
            ListTile(
              title: Text("Address"),
              subtitle: Text(widget.address ?? "Not provided"),
            ),
            ListTile(
              title: Text("Date"),
              subtitle: Text(widget.date?.toString() ?? "No date chosen"),
            ),
          ],
        ),
      ),
    );
  }
}
