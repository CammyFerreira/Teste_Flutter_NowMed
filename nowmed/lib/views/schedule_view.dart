import 'package:flutter/material.dart';

const String title = 'Reagendamento';
const double containerSize = 24;

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  final List schedules = [
    '8:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(247, 246, 252, 1),
        title: const Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 12, left: 12),
          child: Container(
            height: containerSize,
            width: containerSize,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Colors.white,
            ),
            child: const Icon(
              size: 20,
              Icons.arrow_back_ios_new_outlined,
              color: Color.fromRGBO(47, 50, 81, 1),
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(247, 246, 252, 1),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dr. João Silva',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                const Text('Dermatologista'),
                const Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 64),
                  child: Text(
                    'Selecione o horário da consulta',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: GridView.count(
                    childAspectRatio: 68 / 35,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 24,
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    children: List.generate(
                      schedules.length,
                      (index) => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          schedules[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Você está visualizando somente os horários que esse profissional tem disponível para a data escolhida',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                const Center(
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(47, 50, 81, 1),
                    onPressed: null,
                    child: Icon(Icons.arrow_forward_rounded),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Divider(
                    thickness: 5,
                    indent: 80,
                    endIndent: 80,
                    color: Color.fromRGBO(47, 50, 81, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
