import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class AuctionMintView extends StatefulWidget {
  const AuctionMintView({Key? key}) : super(key: key);

  @override
  _AuctionMintViewState createState() => _AuctionMintViewState();
}

class _AuctionMintViewState extends State<AuctionMintView> {
  String _startDate = "Right after lisiting";
  String _endDate = "3 days";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sizer(),
        Text("Minimum bid", style: textStyles.kTextTitlePrimary),
        Sizer.qtr(),
        Text("You'll receive bids on this item",
            style: textStyles.kTextRegular),
        Sizer(),
        Row(
          children: [
            Text("ETH", style: textStyles.kTextLargeText),
            Sizer.horizontal24(),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: colors.kColorFontSecondary)),
                  hintText: "0.00",
                  hintStyle: textStyles.kTextRegular,
                  fillColor: colors.kColorBackgroudSecondary,
                  suffixIcon: Icon(Icons.cancel_rounded,
                      color: colors.kColorFontPlaceholder),
                ),
                style: textStyles.kTextRegular,
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        Sizer(),
        Text("Starting Date", style: textStyles.kTextTitle),
        Sizer.half(),
        Container(
          decoration: BoxDecoration(
              color: colors.kColorFontPlaceholder,
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(
              horizontal: sizes.regularPadding, vertical: sizes.smallPadding),
          child: DropdownButton<String>(
            dropdownColor: colors.kColorFontPlaceholder,
            value: _startDate,
            isDense: true,
            isExpanded: true,
            underline: SizedBox.shrink(),
            iconEnabledColor: colors.kColorFontPrimary,
            items: <String>[
              "Right after lisiting",
              "After 2 days",
              "From next week"
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: textStyles.kTextSubtitle,
                ),
              );
            }).toList(),
            hint: Text(
              "Choose",
              style: textStyles.kTextSubtitle,
            ),
            onChanged: (value) {
              setState(() {
                _startDate = value!;
              });
            },
          ),
        ),
        Sizer(),
        Text("Expiration Date", style: textStyles.kTextTitle),
        Sizer.half(),
        Container(
          decoration: BoxDecoration(
              color: colors.kColorFontPlaceholder,
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(
              horizontal: sizes.regularPadding, vertical: sizes.smallPadding),
          child: DropdownButton<String>(
            dropdownColor: colors.kColorFontPlaceholder,
            value: _endDate,
            isDense: true,
            isExpanded: true,
            underline: SizedBox.shrink(),
            iconEnabledColor: colors.kColorFontPrimary,
            items: <String>["3 days", "1 week", "1 month"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: textStyles.kTextSubtitle,
                ),
              );
            }).toList(),
            hint: Text(
              "Choose",
              style: textStyles.kTextSubtitle,
            ),
            onChanged: (value) {
              setState(() {
                _endDate = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
