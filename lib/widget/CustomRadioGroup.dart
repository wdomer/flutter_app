import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app/local_database/Question.dart';
import 'package:flutter_app/local_database/back_result.dart';
import 'package:flutter_app/screens/saved_surveys_screen/show_result.dart';
import 'package:flutter_app/widget/my_radio_button_group.dart';


class CustomRadioGroup extends StatefulWidget {

  final BackResults backResults;
  final int index;
  final int length;
  final double height;
  final List<String> singleOption;
  final List<dynamic> options;
  final Question question;
  final Function addScore;
  final Map<String, String> map;
  final Function addResult;
  final Function next;
  final String googleLocation;
  final String surveyName;
  final String town;
  final int surveyId;
  final List<BackResults> finalResults;
  final List<double>finalScore;


  const CustomRadioGroup({
    Key key,
    this.height,
    this.singleOption,
    this.addScore,
    this.index,
    this.length,
    this.question,
//      this.next,
//      this.prev,
    this.options,
    this.backResults,
    this.map,
    this.addResult,
    this.next, this.googleLocation, this.surveyName, this.town, this.surveyId, this.finalResults, this.finalScore,
  }) : super(key: key);
  @override
  __CustomRadioGroupState createState() => __CustomRadioGroupState();
}

class __CustomRadioGroupState extends State<CustomRadioGroup> {
  final _form = GlobalKey<FormState>();
  List<dynamic> options;
  String _picked;



  //List<AllResults> results = [];


  @override
  void initState() {
    options = widget.singleOption;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _calculateScore();
    return Form(
      key: _form,
      child: Container(
        height: 500,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "${widget.index + 1} -- ",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                    Text("${widget.length} ",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "${widget.question.question}",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: Container(
                    child: MyRadioButtonGroup(
                      //     orientation: GroupedButtonsOrientation.VERTICAL,
                      labelStyle: TextStyle(),
                      padding: EdgeInsets.zero,

                      onSelected: (String selected) {
                        setState(() {
                          _picked = selected;
                        });

                        // print(results.finalScore);

                        //   print(results.questionId);

                        // widget. next();
                      },
                      onChange: (v, i) {
                        setState(() {
                          _picked = v[i];
                        });
                      },
                      labels: widget.singleOption,
                      picked: _picked,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.grey,
                  onPressed: () async {
                    var key = widget.map.keys.firstWhere(
                        (k) => widget.map[k] == _picked,
                        orElse: () => null);
                    double weight = double.parse(widget.question.weightage);
                    double doubleScore = double.parse(key);
                    double finalScore = weight * doubleScore;
                    double surveyFinalScore = 0;
                    BackResults result = BackResults(
                        questionId: widget.question.id,
                     //   option: _picked,
                        score: key != null ? key : '0',
                        finalScore: finalScore.toString());


                    if (_picked != null) {
                      if (widget.index + 1 < widget.length) {
                    //    _calculateResult();

                        surveyFinalScore += finalScore;
                        widget.addScore(finalScore);

                        widget.next();
                     //   results.add(result);
                        widget.addResult(result);
                        print(widget.finalResults.length);
                        print(widget.finalResults);
                      //  print(key);
                      }
                      if (widget.index + 1 == widget.length) {
                     //   _calculateResult();
                        surveyFinalScore += finalScore;
                        widget.addResult(result);
                        double percentageScore =
                            surveyFinalScore != 0 ? surveyFinalScore / 4 : 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowResult(
                                      finalScore: widget.finalScore,
                                  backResult: widget.finalResults,
                                  googleLocation: widget.googleLocation,
                                  surveyName: widget.surveyName,
                                  town: widget.town,
                                    surveyId:widget.surveyId
                                    )));
                      }
                    }
                  },
                  child: Text(AppLocalizations.of(context).tr("Next")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
    //  print(key);



}
