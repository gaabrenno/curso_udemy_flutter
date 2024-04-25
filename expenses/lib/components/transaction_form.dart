import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:brasil_fields/brasil_fields.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double, DateTime) onSubmit;

  const TransactionForm(this.onSubmit, {super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  _submitForm() {
    final title = _titleController.text;
    final valueNoPoint =_valueController.text.replaceAll('.', '');
    final value = double.tryParse(valueNoPoint.replaceAll(',','.')) ?? 0.0;

    if (title.isEmpty || value <= 0 || _selectedDate == null) {
      return;
    }
    widget.onSubmit(title, value, _selectedDate);
  }

  _showDatePiker() {
    showDatePicker(
      helpText: 'Selecione uma data:',
      cancelText: 'Cancelar',
      confirmText: 'Atribuir data',
      fieldHintText: 'dd/mm/yyyy',
      context: context,
      firstDate: DateTime(1974),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: _valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CentavosInputFormatter()
              ],
            ),
            Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                          'Data Selecionada: ${DateFormat('dd/MM/y').format(_selectedDate)}')),
                  InkWell(
                    child: Text(
                      'Alterar data',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    onTap: _showDatePiker,
                  )
                ],
              ),
            ),
            Container(
              height: 30,
              width: 200,
              child: Expanded(
                child: FloatingActionButton(
                  onPressed: _submitForm(),
                  backgroundColor: Colors.green[300],
                  child: Text(
                    'Nova Transação',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
