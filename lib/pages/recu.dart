import 'package:flutter/material.dart';

class Recu extends StatefulWidget {
  const Recu({super.key});
  @override
  State<Recu> createState() => RecuState();
}

class RecuState extends State<Recu> {
  final List<Map<String, dynamic>> _received = [
    {"name": "John Doe", "amount": "+100000\$", "date": "2022-01-01"},
    {"name": "Jane Smith", "amount": "+250000\$", "date": "2022-02-15"},
    {"name": "Ali Ndiaye", "amount": "+300000\$", "date": "2022-03-10"},
    {"name": "Maria Lopez", "amount": "+150000\$", "date": "2022-04-05"},
    {"name": "Thomas Müller", "amount": "+400000\$", "date": "2022-05-20"},
    {"name": "Fatou Diop", "amount": "+180000\$", "date": "2022-06-30"},
    {"name": "Liu Wei", "amount": "+220000\$", "date": "2022-07-17"},
    {"name": "Emily Johnson", "amount": "+310000\$", "date": "2022-08-22"},
    {"name": "Mohamed Salah", "amount": "+270000\$", "date": "2022-09-09"},
    {"name": "Sara Connor", "amount": "+190000\$", "date": "2022-10-14"},
    {"name": "Jean Dupont", "amount": "+350000\$", "date": "2022-11-11"},
    {"name": "Chloe Martin", "amount": "+130000\$", "date": "2022-12-03"},
    {"name": "Carlos Rivera", "amount": "+290000\$", "date": "2023-01-08"},
    {"name": "Ahmed Khan", "amount": "+240000\$", "date": "2023-02-27"},
    {"name": "Laura Kim", "amount": "+175000\$", "date": "2023-03-19"},
  ];

  List<Map<String, dynamic>> _filtered = [];
  final TextEditingController _searchController = TextEditingController();

  //fonction d'initialisation
  @override
  void initState() {
    super.initState();
    _filtered = _received;
    _searchController.addListener(_onSearchChanged);
  }

  //fonction de recherche
  void _onSearchChanged() {
    String query = _searchController.text.toLowerCase().trim();
    setState(() {
      _filtered = _received
          .where((item) =>
              item['name'].toString().toLowerCase().contains(query))
          .toList();
  });
}

//fonction de nettoyage
  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('Received'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Rechercher un nom',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filtered.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(
                    _filtered[index]['name'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    _filtered[index]['date'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(_filtered[index]['amount'].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
