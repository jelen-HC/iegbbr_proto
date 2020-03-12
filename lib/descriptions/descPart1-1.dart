import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class DescPartOneOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Center(
                    child: Icon(
                      Icons.assignment,
                      color: Colors.black38,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      '1.1 Statutes and Regulations for Addressing Pathogens, Biological Agents and Toxins and their Regulatory Authorities',
                      style: TextStyle(
                          fontSize: 19.0,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Html(
              data: """
                  <p>The main national statutes, regulations and oversight frameworks and policy instruments that bear the force of law, relevant to 
                  biosecurity and biosafety management of human and animal pathogens or biological agents, and toxins, in IEGBBR member countries, are 
                  captured in Tables 1.1a and 1.1b. The corresponding authorities, ministries, and departments are also included. In addition, other 
                  complementary oversight measures relevant to the biosecurity and biosafety landscape are captured in this part of the compendium. European 
                  countries implement European Union Directives related to biosafety and biosecurity nationally (refer to the box below).</p>
                  <p><em>Note: Different spellings of terms used in IEGBBR member countries have been respected; therefore, spelling of terms will vary within the document.</em></p>
              """,
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              defaultTextStyle: TextStyle(fontSize: 15.0),
            ),
            Html(
              data: """
                        <h5>European Directives</h5>
                        <p>European Union Member States, including the IEGBBR members Denmark, France, Germany, the Netherlands, and the United Kingdom are obliged to implement a number of 
                        European Union Directives related to biosafety and biosecurity into their national legislation. This is done by European Union Member States in a number of ways; many 
                        contents of Swiss legislation rely on adopts European Union Directives though it is not a member state. Related European Union Directives and regulations include the following</p>
                        <ul>
                          <li>
                            <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1527259546545&uri=CELEX:32000L0054">Directive 2000/54/EC</a> on the protection of workers from risks related 
                            to exposure to biological agents at work. This is a key European Union directive for biosafety that covers human, genetically modified organisms and zoonotic pathogens.
                          </li>
                          <li>
                            <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=celex%3A32009L0041">Directive 2009/41/EC</a> on the contained use of genetically modified organisms
                          </li>
                          <li>
                            <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1527259766629&uri=CELEX:32001L0018">Directive 2001/18/EC</a> on the deliberate release into the environment 
                            of genetically modified organisms
                          </li>
                          <li>
                            <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1527259849177&uri=CELEX:32009R0428">Regulation (EC) No. 428/2009</a> on a Community regime for the control 
                            of exports, transfer, brokering and transit of dual-use items
                          </li>
                          <li>
                            <a href="https://ec.europa.eu/health/sites/health/files/preparedness_response/docs/decision_serious_crossborder_threats_22102013_en.pdf">Decision No 1082/2013/EU</a> of 
                            22 October 2013 on serious cross-border threats to health
                          </li>
                          <li>
                            <a href="https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1527259635582&uri=CELEX:32010L0032">Directive 2010/32/EU</a> on the prevention from sharp injuries in the 
                            hospital and healthcare sector <a href="https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2004:021:0011:0023:en:PDF">Regulation (EC) No 136/2004</a> of 22 
                            January 2004 laying down procedures for veterinary checks at Community border inspection posts on products imported from third countries
                          </li>
                          <li>
                            <a href="https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2009:300:0001:0033:EN:PDF">Regulation (EC) No 1069/2009</a> of 21  October 2009 laying down health 
                            rules as regards animal by-products and derived products not intended for human consumption
                          </li>
                        </ul>
                     """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Colors.black12,
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 35.0),
          ],
        ),
      ),
    );
  }
}