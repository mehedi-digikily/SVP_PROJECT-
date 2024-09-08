import 'package:flutter/cupertino.dart';
import 'package:intl_phone_number_field/intl_phone_number_field.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      height: 40,
      // controller: controller,
      // inputFormatters: const [],
      initCountry: CountryCodeModel(
          name: "EG", dial_code: "+20", code: "EG"),
      betweenPadding: 0,
      dialogConfig: DialogConfig(
        countryItemHeight: 35,
        selectedIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            "assets/check.png",
            width: 20,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      countryConfig: CountryConfig(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0,
          ),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5),
          ),
        ),
        noFlag: false,
      ),

      phoneConfig: PhoneConfig(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0,
          ),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),

        radius: 0,
        hintText: "512 450 4131",
        borderWidth: 0,
        textInputAction: TextInputAction.done,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        errorTextMaxLength: 2,
      ),
    );
  }
}
