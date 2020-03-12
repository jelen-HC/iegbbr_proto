import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Nld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Center(
                    child: Icon(
                      Icons.flag,
                      color: Colors.indigo,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'Netherlands',
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Html(
              data: """
                          <h5>Primary\u00B9 national statutes and regulations, and their legislative authorities, ministries, and departments</h5>
                       """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Colors.black12,
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Html(
              data: """
                          <ul>
                            <li>
                              <a href="">Dutch Working Conditions Legislation</a> : <a href="">Ministry of Social Affairs and Employment</a>
                            </li>
                              <ul>
                                <li>The Working Conditions Act, Decree, Regulation</li>
                              </ul>
                            <li>
                              <a href="">Environmental Management Act</a> : <a href="">Ministry of Infrastructure and Water Management</a>
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
                              Contained use and deliberate release of delivers opinions on all biotechnology-related issues, including genetically modified organisms 
                              <a href="">(Decree and Regulation 2013)</a> : <a href="">Ministry of Infrastructure and Water Management</a>
                            </li>
                          </ul>
                          <p> </p>
                       """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Color.fromRGBO(200, 190, 190, 0.1),
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Html(
              data: """
                          <h5>Complementary and other statutes and regulations, and additional authorities, ministries, and departments (i.e. national, subnational, non-governmental, etc.)</h5>
                       """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Colors.black12,
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Html(
              data: """
                          <ul>
                            <li>
                              <a href="">Ministry of Health, Welfare and Sport</a>
                            </li>
                            <li>
                              <a href="">Ministry of Education, Culture and Science</a>
                            </li>
                            <li>
                              <a href="">Ministry of Foreign Affairs</a>
                            </li>
                            <li>
                              <a href="">Ministry of Agriculture, Nature and Food Quality</a>
                            </li>
                            <li>
                              <a href="">Ministry of Economic Affairs and Climate Policy</a>
                            </li>
                            <li>
                              <a href="">Ministry of Justice and Security</a>
                            </li>
                            <li>
                              <a href="">Ministry of Defence</a>
                            </li>
                            <li>
                              <a href="">National Institute for Public Health and the Environment</a> (RIVM): promoting public health and safeguarding environmental quality
                            </li>
                              <ul>
                                <li>
                                  Genetically Modified Organisms Office: performs the genetically modified organisms permit process on behalf of the Minister
                                </li>
                                <li>
                                  The <a href="">Biosecurity Office</a> : national information centre advising the government and organizations on biosecurity issues awaiting forthcoming regulations
                                </li>
                              </ul>
                            <li>
                              The Royal Netherlands Academy of Arts and Sciences
                            </li>
                            <li>
                              Commission on Genetic Modification (COGEM): an independent advisory committee providing scientific advice to the government on the risks to human health and the environment 
                              of the production and use of genetically modified organisms, informs the government of ethical and societal issues linked to genetic modification.
                            </li>
                            <li>
                              Act General Provision’s environmental law (Wabo): regulates the physical containment (laboratories and other workplaces) in relation to genetically modified organisms 
                              and level 3 and 4 biological agents
                            </li>
                            <li>
                              <a href="">Import and Export Act on strategic goods</a>
                            </li>
                            <li>
                              <a href="">Implementation Act Convention on biological weapons</a>
                            </li>
                            <li>
                              Law on transport of dangerous goods <a href="">(Accord européen relatif au transport international de marchandises dangereuses par route)</a>
                            </li>
                            <li>
                              Law provisions for fire service, emergency response &amp; crisis management Decree information on disasters and crises
                            </li>
                          </ul>
                          <p> </p>
                       """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Color.fromRGBO(200, 190, 190, 0.1),
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}