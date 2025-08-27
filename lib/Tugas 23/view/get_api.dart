import 'package:flutter/material.dart';
import 'package:ppkd_b_3/Tugas%2023/api/get_user.dart';
import 'package:ppkd_b_3/Tugas%2023/model/model/user_model.dart';
import 'package:ppkd_b_3/Tugas%2023/view/user_detailpage.dart';

class GetAPIScreen extends StatefulWidget {
  const GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<GetAPIScreen> createState() => _GetAPIScreenState();
}

class _GetAPIScreenState extends State<GetAPIScreen> {
  late Future<List<Welcome>> _futureUsers;

  final List<Welcome> _allUsers = [];
  List<Welcome> _filteredUsers = [];
  String _searchQuery = "";

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  void _loadUsers() {
    _futureUsers = getUser();
  }

  Future<void> _refresh() async {
    _loadUsers();
    setState(() {});
    await _futureUsers;
  }

  void _filterUsers(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      _filteredUsers = _allUsers.where((user) {
        final name = (user.name ?? "").toLowerCase();
        return name.contains(_searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Harry Potter",
          style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 202, 221),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search Box
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search by name",
                labelText: "Search",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 192, 213),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _filterUsers,
            ),
          ),

          // List Data
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refresh,
              child: FutureBuilder<List<Welcome>>(
                future: _futureUsers,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text("Gagal Memuat Data"));
                  } else if (!snapshot.hasData || snapshot.data.isEmpty) {
                    return const Center(child: Text("Data Kosong"));
                  } else {
                    final users = snapshot.data as List<Welcome>;
                    _allUsers.clear();
                    _allUsers.addAll(users);

                    final displayUsers = _searchQuery.isEmpty
                        ? users
                        : _filteredUsers;

                    return ListView.builder(
                      itemCount: displayUsers.length,
                      itemBuilder: (BuildContext context, int index) {
                        final user = displayUsers[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          elevation: 4,
                          color: const Color(0xFFFFF0F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: user.image.isEmpty
                                  ? Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.pink.shade100,
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.pink,
                                      ),
                                    )
                                  : Image.network(
                                      user.image,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            title: Text(
                              user.name ?? "",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFFE91E63),
                              ),
                            ),
                            subtitle: Text(
                              "${user.house ?? ''} ${user.dateOfBirth ?? ''}",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.pink.shade700,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      UserDetailPage(user: user),
                                ),
                              );
                            },
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
