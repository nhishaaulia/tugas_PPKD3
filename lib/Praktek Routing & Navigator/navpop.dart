import 'package:flutter/material.dart';

class NavPop extends StatelessWidget {
  const NavPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman2');
              },
              child: const Text('pindah ke halaman 2 NavPop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman3');
              },
              child: const Text('Pindah ke halaman 3 NavPop'),
            ),
          ],
        ),
      ),
    );
  }
}

class NavPop2 extends StatelessWidget {
  const NavPop2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pindah ke halaman 1'),
        ),
      ),
    );
  }
}

class NavPop3 extends StatelessWidget {
  const NavPop3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman 3')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pindah ke halaman 1'),
        ),
      ),
    );
  }
}
