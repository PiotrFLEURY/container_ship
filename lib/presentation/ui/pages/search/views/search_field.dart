import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.onSubmitted,
    required this.onClear,
  });

  final void Function(String) onSubmitted;
  final void Function() onClear;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool _empty = true;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: 'Enter any docker image name',
        //prefixIcon: const Icon(Icons.search),
        suffixIcon: _empty
            ? null
            : IconButton(
                onPressed: _clearText,
                icon: const Icon(Icons.clear),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
      ),
      onSubmitted: widget.onSubmitted,
      onChanged: (value) {
        setState(() {
          _empty = value.isEmpty;
        });
      },
    );
  }

  void _clearText() {
    widget.onClear();
    controller.clear();
    setState(() {
      _empty = true;
    });
  }
}
