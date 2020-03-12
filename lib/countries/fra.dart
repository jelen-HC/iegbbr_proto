import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Fra extends StatelessWidget {
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
                      color: Colors.blueAccent,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'France',
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
                              <a href="">Public Health Code (Fr)</a> Art. L5139-1, L5139-2, and L5139-3; Art. L5439-1, L5439-2, L5439-3, and L5439-4; Art. R5139-1 to R5139-20:
                              <a href="">The French National Agency for Medicines and Health Products Safety</a>, Ministry of Solidarity and Health
                            </li>
                            <li>
                              <a href="">Labour Code</a> (Articles R. 4421-1, R4421-4 and 4421-9): Ministry of Labour
                            </li>
                            <li>
                              <a href="">Decree No. 2010-736</a> relative to the microorganisms and toxins: French National Agency for Medicines and Health Products Safety
                            </li>
                            <li>
                              <a href="">Order of 30 April 2012</a> fixing the list of microorganisms and toxins: French National Agency for Medicines and Health Products Safety
                            </li>
                            <li>
                              <a href="">Order of 17 March 2011</a> on skills and qualifications provided for in Article L. 5139-1 of the Public Health Code: French National Agency 
                              for Medicines and Health Products Safety
                            </li>
                            <li>
                              <a href="">Order of 16 July 2007</a> laying down the technical measures for prevention, in particular containment: Ministry of Labour
                            </li>
                            <li>
                              <a href="">Order of 27 December 2017</a> relative to the classification of biological agents and prevention measures: Ministry of Labour
                            </li>
                            <li>
                              <a href="">Order of 11 June 2013 amending the Order of 23 January 2013</a> on the rules of good practice for guaranteeing biological 
                              safety and security: French National Agency for Medicines and Health Products Safety
                            </li>
                            <li>
                              <a href="">Decree No. 94-352</a> relative to the protection of workers against risks resulting from their exposure to biological 
                              agents and amending the French Labour Code: Ministry of Labour
                            </li>
                            <li>
                              <a href="">Decree No. 2008-244 of 7 March 2008</a> modifying the Labour Code on Biological Risk Prevention (Articles R. 4421-1 to R. 4427-5 of the Labour Code)
                            </li>
                            <li>
                              Public Health Code : framework strengthened by <a href="">Act No. 2009-879 of 21 July 2009,</a> <a href="">2008-717 of 17 July 2008</a> and 
                              <a href="">Ordinance No. 2013-1183 of 19 December 2013</a>:
                            </li>
                            <li>
                              <a href="">Defence Code</a>: Ministry of Defence
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
                              <a href="">National Council for Biosafety</a> which is governed by the National Secretary of Defense (and reports directly to the prime minster) to advise public authorities, 
                              the scientific community and the public on security issues, benefits and the risks posed by advances in life science research
                            </li>
                            <li>
                              <a href="">The General Secretariat for Defence and National Security</a> : ensuring the adaptation, consistency and continuity of the action of the State in the field 
                              of defense and, more recently, security
                            </li>
                            <li>
                              <a href="">High Council for Biotechnology</a> : delivers opinions on all biotechnology-related issues, including genetically modified organisms
                            </li>
                            <li>
                              <a href="">The Parliamentary Office for Scientific and Technological Assessment</a> : to inform Parliament of scientific and technological options in order, specifically, 
                              to make its decisions clear
                            </li>
                            <li>
                              <a href="">French Agency for Food, Environmental and Occupational Health &amp; Safety</a> : undertakes monitoring, expert assessment, research and reference activities in 
                              a broad range of topics that encompass human health, animal health and well-being, and plant health
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