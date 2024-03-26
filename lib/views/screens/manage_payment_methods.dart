import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/app_bar_without_search_bar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ManagePaymentMethod(),
    );
  }
}

class ManagePaymentMethod extends StatefulWidget {
  const ManagePaymentMethod({Key? key}) : super(key: key);

  @override
  State<ManagePaymentMethod> createState() => _ManagePaymentMethodState();
}

class _ManagePaymentMethodState extends State<ManagePaymentMethod> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if (value?.isEmpty ?? false) {
      return 'Name is required.';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value!)) {
      return 'Please enter only alphabetical characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const AppBarWithoutSearchBar(title: 'Manage Payment Methods'),
              Container(
                width: double.infinity,
                height: 71,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.09, 1.00),
                    end: Alignment(0.09, -1),
                    colors: [Color(0xFFe4f8fa), Color(0xFFe4f8fa)],
                  ),
                ),
                child: const Center(
                  child: Text(
                    'We will debit to verify a new payment instrument.\nThis will be refunded after verification.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          height: 400, // Adjust height as needed
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),
                          ),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 15.0,
                                      ),
                                      child: Text(
                                        'Add new card',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    const SizedBox(height: 24.0),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Type Your Card Number',
                                        labelText: 'Card number',
                                        suffixIcon: Icon(Icons.credit_card),
                                      ),
                                      keyboardType: TextInputType.phone,
                                      onSaved: (String? value) {
                                        this._phoneNumber = value;
                                        print('phoneNumber=$_phoneNumber');
                                      },
                                      // TextInputFormatters are applied in sequence.
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      maxLines: 1,
                                    ),
                                    const SizedBox(height: 24.0),
                                    // "Salary" form.
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Type Expiry Data',
                                              labelText: 'MM/YY',
                                            ),
                                            keyboardType: TextInputType.phone,
                                            onSaved: (String? value) {
                                              this._phoneNumber = value;
                                              print(
                                                  'phoneNumber=$_phoneNumber');
                                            },
                                            // TextInputFormatters are applied in sequence.
                                            inputFormatters: <TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            maxLines: 1,
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: 'Type Your CVV',
                                              labelText: 'CVV',
                                            ),
                                            keyboardType: TextInputType.phone,
                                            onSaved: (String? value) {
                                              this._phoneNumber = value;
                                              print(
                                                  'phoneNumber=$_phoneNumber');
                                            },
                                            // TextInputFormatters are applied in sequence.
                                            inputFormatters: <TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            maxLines: 1,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 24.0),
                                    Row(
                                      children: [
                                        Image.asset(
                                            'assets/images/green_tick.png'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          'Save the card details securely for future use\nexpect CVV',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 25.0, bottom: 12),
                                      child: Divider(),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          '₹',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        const Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          width: 153,
                                          height: 40,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF018297),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Save and Proceed',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 124,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 21.0, left: 12),
                        child: Text(
                          'Debit or Credit card',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, right: 20),
                            child: Image.asset('assets/images/image60.png'),
                          ),
                          const Text(
                            'Add a card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Image.asset(
                              'assets/images/Forward.png',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
