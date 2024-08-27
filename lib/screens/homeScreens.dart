import 'package:flutter/material.dart';

class TreinoSemanalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.yellow[700],
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'TREINO SEMANAL',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildDayRow('SEGUNDA'),
                _buildDayRow('TERÇA'),
                _buildDayRow('QUARTA'),
                _buildDayRow('QUINTA'),
                _buildDayRow('SEXTA'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayRow(String day) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            color: Colors.black,
            child: Text(
              day,
              style: TextStyle(
                color: Colors.yellow[700],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
