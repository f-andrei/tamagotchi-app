import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const TamagotchiApp());
}

class TamagotchiApp extends StatelessWidget {
  const TamagotchiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, 
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', 'BR'), 
      ],
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imagePath = "assets/images/bixinho.png";

  void _changeImage() {
    setState(() {
      _imagePath = _imagePath == "assets/images/bixinho.png"
          ? "assets/images/bixinho2.png"
          : "assets/images/bixinho.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: 435,
                height: 823,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF89D1C9),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Color(0xFF89D1C9)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 26,
                      top: 10,
                      child: Container(
                        width: 358,
                        height: 40,
                        decoration: const BoxDecoration(color: Color(0xFF89D1C9)),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 69,
                              top: -2,
                              child: SizedBox(width: 219, height: 30, child: Stack()),
                            ),
                            const Positioned(
                              left: 276.67,
                              top: 17.33,
                              child: SizedBox(
                                width: 66.66,
                                height: 11.34,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 42.33,
                                      top: 0,
                                      child: SizedBox(
                                        width: 24.33,
                                        height: 11.33,
                                        child: Stack(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 12,
                              child: SizedBox(
                                width: 54,
                                height: 21,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 54,
                                        height: 21,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32),
                                          ),
                                        ),
                                        child: const FlutterLogo(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: -19,
                      top: 589,
                      child: Container(
                        width: 435,
                        height: 300,
                        decoration: const BoxDecoration(color: Color.fromARGB(255, 219, 217, 217)),
                      ),
                    ),
                    const Positioned(
                      left: 20.40,
                      top: 161,
                      child: SizedBox(
                        width: 54.10,
                        height: 28.70,
                        child: Stack(),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 136,
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 219, 207, 40),
                          border: Border.all(width: 2),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 136,
                      child: Container(
                        width: 65,
                        height: 58,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/saude.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 74,
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          border: Border.all(width: 2),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 82,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/fome.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 346,
                      top: 74,
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 129, 180, 222),
                          border: Border.all(width: 2),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 201,
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 192, 19, 6),
                          border: Border.all(width: 2),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 27,
                      top: 208,
                      child: Container(
                        width: 41,
                        height: 41,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/energia.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 366,
                      top: 82,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Imprima',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 261,
                      top: 68,
                      child: Container(
                        width: 67,
                        height: 63,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/moeda.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 277,
                      top: 121,
                      child: Text(
                        '200',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Indie Flower',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 151,
                      top: 650,
                      child: Container(
                        width: 110,
                        height: 111,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/jogar.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 290,
                      top: 635,
                      child: Container(
                        width: 99,
                        height: 104,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/loja.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 7,
                      top: 635,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TaskForm()),
                          );
                        },
                        child: Container(
                          width: 106,
                          height: 93,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/tarefas.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 32,
                      top: 208,
                      child: GestureDetector(
                        onTap: _changeImage,
                        child: Container(
                          width: 348,
                          height: 448,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(_imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class DayInWeek {
  String dayName;
  bool isSelected = false;

  DayInWeek(this.dayName, {this.isSelected = false});
}

class SelectWeekDays extends StatefulWidget {
  final Function(List<DayInWeek>) onSelect;
  final Color? backgroundColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? daysFillColor;
  final Color? daysBorderColor;
  final Color? selectedDayTextColor;
  final Color? unSelectedDayTextColor;
  final bool border;
  final BoxDecoration? boxDecoration;
  final double padding;
  final List<DayInWeek> days;

  SelectWeekDays({
    required this.onSelect,
    this.backgroundColor,
    this.fontWeight,
    this.fontSize,
    this.daysFillColor,
    this.daysBorderColor,
    this.selectedDayTextColor = Colors.white,
    this.unSelectedDayTextColor = Colors.grey,
    this.border = true,
    this.boxDecoration,
    this.padding = 8.0,
    required this.days,
    Key? key,
  }) : super(key: key);

  @override
  _SelectWeekDaysState createState() => _SelectWeekDaysState();
}

class _SelectWeekDaysState extends State<SelectWeekDays> {
  List<DayInWeek> _selectedDays = [];

  @override
  void initState() {
    super.initState();
    _selectedDays.addAll(widget.days.where((day) => day.isSelected));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Selecione os dias da semana:',
          style: TextStyle(
            fontSize: widget.fontSize ?? 16.0,
            fontWeight: widget.fontWeight ?? FontWeight.normal,
          ),
        ),
        SizedBox(height: widget.padding),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: widget.days.map((day) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  day.isSelected = !day.isSelected;
                  if (day.isSelected) {
                    _selectedDays.add(day);
                  } else {
                    _selectedDays.remove(day);
                  }
                  widget.onSelect(_selectedDays);
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                decoration: BoxDecoration(
                  color: day.isSelected ? widget.daysFillColor ?? Colors.blue : null,
                  border: widget.border ? Border.all(color: widget.daysBorderColor ?? Colors.grey) : null,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  day.dayName,
                  style: TextStyle(
                    color: day.isSelected ? widget.selectedDayTextColor ?? Colors.white : widget.unSelectedDayTextColor ?? Colors.black,
                    fontSize: widget.fontSize ?? 16.0,
                    fontWeight: widget.fontWeight ?? FontWeight.normal,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

int mapDayNameToIndex(String dayName) {
  switch (dayName.toLowerCase()) {
    case 'dom':
      return 0;
    case 'seg':
      return 1;
    case 'ter':
      return 2;
    case 'qua':
      return 3;
    case 'qui':
      return 4;
    case 'sex':
      return 5;
    case 'sab':
      return 6;
    default:
      throw ArgumentError('Invalid day name: $dayName');
  }
}

class TaskForm extends StatefulWidget {
  const TaskForm({super.key});

  @override
  TaskFormState createState() {
    return TaskFormState();
  }
}

class TaskFormState extends State<TaskForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();
  
  bool _isSwitchedOn = false;
  List<DayInWeek> _days = [];

  @override
  void initState() {
    super.initState();
    _dateController.text = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _timeController.text = formatDate(
      DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
      [hh, ':', nn],
    ).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulário de Tarefas')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Nome',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira um título';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Descrição',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira uma descrição';
                }
                return null;
              },
            ),
            TextFormField(
              readOnly: true,
              controller: _dateController,
              decoration: const InputDecoration(
                labelText: 'Data de início',
              ),
              onTap: () async {
                await _selectDate(context);
              },
            ),
            TextFormField(
              readOnly: true,
              controller: _timeController,
              decoration: const InputDecoration(
                labelText: 'Horário',
              ),
              onTap: () async {
                await _selectTime(context);
              },
            ),
            TextFormField(
              controller: _durationController,
              decoration: const InputDecoration(
                labelText: 'Duração',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira uma duração';
                }
                return null;
              },
            ),
            Row(
              children: [
                Text(
                  'Repetir',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 10),
                Switch(
                  value: _isSwitchedOn,
                  activeColor: Colors.red,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitchedOn = value;
                      if (_isSwitchedOn) {
                        _days = [
                          DayInWeek("Dom"),
                          DayInWeek("Seg"),
                          DayInWeek("Ter"),
                          DayInWeek("Qua"),
                          DayInWeek("Qui"),
                          DayInWeek("Sex"),
                          DayInWeek("Sab"),
                        ];
                      } else {
                        _days = [];
                      }
                    });
                  },
                ),
              ],
            ),
            if (_isSwitchedOn) 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectWeekDays(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  days: _days,
                  border: false,
                  boxDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [const Color(0xFFE55CE4), const Color(0xFFBB75FB)],
                      tileMode: TileMode.repeated,
                    ),
                  ),
                  onSelect: (values) {
                    print(values);
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // loginUser();
                  submitForm();
                },
                child: const Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(2015),
      lastDate: DateTime(2101),
      locale: const Locale('pt', 'BR'),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        final now = DateTime.now();
        final time = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
        _timeController.text = formatDate(time, [hh, ':', nn]).toString();
      });
    }
  }

  Future<void> loginUser() async {
  try {
    const String apiUrl = 'http://10.0.2.2:5000/auth/login';
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': 'string',
        'password': 'string', 
      }),
    );

    if (response.statusCode == 200) {
      print('Login successful');
      print('Failed to login. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    print('Error during login request: $e');
  }
}

  Future<void> submitForm() async {
  if (_formKey.currentState!.validate()) {
    String apiUrl = 'http://10.0.2.2:5000/parent/create_task'; 
    Map<String, dynamic> requestData = {
      'name': _nameController.text,
      'description': _descriptionController.text,
      'start_date': '${_dateController.text}T${_timeController.text}',
      'duration': _durationController.text,
      'repeat_days': _days.where((day) => day.isSelected).map((day) => mapDayNameToIndex(day.dayName)).toList(),
      'day': 1,
      'is_visible': true,
      'is_repeatable': _isSwitchedOn ? true : false,
    };
    print(requestData);
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Task submitted successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to submit task. Please try again.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  }
}

}