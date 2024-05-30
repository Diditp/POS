import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final int? maxLines;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomForm(
      {super.key,
      this.maxLines = 1,
      this.prefixIcon,
      this.keyboardType,
      required this.controller,
      required this.labelText,
      this.onTap,
      this.onChanged,
      this.validator});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateClearIconVisibility);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateClearIconVisibility);
    super.dispose();
  }

  void _updateClearIconVisibility() {
    setState(() {
      _showClearIcon = widget.controller.text.isNotEmpty;
    });
  }

  bool isVisible = true;

  IconButton passwordIconVisible() {
    return IconButton(
      icon: isVisible
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
      onPressed: () {
        setState(() {
          isVisible = !isVisible;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: _showClearIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.controller.clear();
                    });
                  },
                  icon: Icon(
                    CupertinoIcons.clear_circled_solid,
                    color: Colors.grey.shade500,
                  ), // Replace with Material icon
                )
              : null,
          labelText: widget.labelText,
          labelStyle: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 15,
              fontWeight: FontWeight.w400),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300, width: 2)),
        ),
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        validator: widget.validator);
  }
}
