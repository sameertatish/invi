import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:flutter/material.dart';
import '../../../core/general_export.dart';
import 'package:intl/intl.dart' as intl;

class TextFieldWidget extends StatefulWidget {
  final String? hintText;

  final bool isSecure;
  final TextEditingController controller;
  final int maxLine;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.isSecure = false,
    this.maxLine = 1,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget>
    with WidgetsBindingObserver {
  bool isSecure = false;
  String? text = '';
  bool isRTL(String text) {
    return intl.Bidi.detectRtlDirectionality(text);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    setState(() {
      isSecure = widget.isSecure;
    });
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (state == AppLifecycleState.inactive) {
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    }
    if (state == AppLifecycleState.resumed) {
      currentFocus.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {
          text = value;
        });
      },
      textDirection: isRTL(text!) ? TextDirection.rtl : TextDirection.ltr,
      controller: widget.controller,
      obscureText: isSecure,
      maxLines: widget.maxLine,
      keyboardType: widget.textInputType,
      readOnly: widget.textInputType == TextInputType.datetime,
      onTap: () async {
        if (widget.controller.selection ==
            TextSelection.fromPosition(
                TextPosition(offset: widget.controller.text.length - 1))) {
          setState(() {
            widget.controller.selection = TextSelection.fromPosition(
                TextPosition(offset: widget.controller.text.length));
          });
        }
        if (widget.textInputType == TextInputType.datetime) {
          await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2018),
            lastDate: DateTime(2029),
          ).then((selectedDate) {
            if (selectedDate != null) {
              widget.controller.text =
                  easy.DateFormat('yyyy-MM-dd').format(selectedDate);
            }
          });
        }
      },
      mouseCursor: MouseCursor.uncontrolled,
      decoration: InputDecoration(
        filled: true,
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              width: 2, color: Color.fromRGBO(16, 53, 97, 0.1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              width: 2, color: Color.fromRGBO(16, 53, 97, 0.1)),
        ),
        fillColor: Colors.white,
        hintText: widget.hintText ?? '',
        hintStyle: TextStyle(
          color: Theme.of(context).hintColor,
          fontWeight: FontWeight.w400,
          fontSize: Adaptive.px(18),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: Adaptive.px(24),
          vertical: Adaptive.px(15),
        ),
        suffixIcon: widget.isSecure
            ? InkWell(
                onTap: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                child: Icon(Icons.remove_red_eye,
                    color: Theme.of(context).hintColor),
              )
            : widget.suffixIcon,
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.black),
    borderRadius: BorderRadius.circular(Adaptive.px(10)),
  );
}
