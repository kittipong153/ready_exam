import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _gender;
  String? _province;
  bool _acceptone = false;
  bool _accepttwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'น้ำหนักสินค้า (กก.):'),
                validator: (value) => value!.isEmpty ? 'กรอกข้อมูล' : null,
                onSaved: (value) => _name = value,
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'เลือกระยะทาง:'),
                items: ['ในเมือง', 'ต่างจังหวัด', 'ต่างประเทศ']
                    .map((province) => DropdownMenuItem(
                          value: province,
                          child: Text(province),
                        ))
                    .toList(),
                onChanged: (value) => setState(() => _province = value),
                validator: (value) =>
                    value == null ? 'กรุณาเลือกจังหวัด' : null,
              ),
              Text('บริการเสริม:'),
              Row(
                children: [
                  Text('แพ็คกิ้งพิเศษ: +20 บาท'),
                  Checkbox(
                    value: _acceptone,
                    onChanged: (value) => setState(() => _acceptone = value!),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('ประกันพัสดุ: +50 บาท'),
                  Checkbox(
                    value: _accepttwo,
                    onChanged: (value) => setState(() => _accepttwo = value!),
                  ),
                ],
              ),
              Text('เลือกความเร่งด่วน'),
              RadioListTile(
                title: const Text('ปกติ'),
                value: 'ปกติ',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วน'),
                value: 'ด่วน',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('ด่วนพิเศษ'),
                value: 'ด่วนพิเศษ',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value.toString();
                  });
                },
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && _acceptone) {
                      _formKey.currentState!.save();
                    }
                  },
                  child: Text('คำนวณราคา'),
                ),
              ),
              Center(
                child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text("ค่าจัดส่งทั้งหมด: 55.0",
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
