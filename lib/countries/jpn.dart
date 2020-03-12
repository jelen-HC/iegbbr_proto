import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Jpn extends StatelessWidget {
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
                      color: Colors.red,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'Japan',
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
                              <a href="">Directive 2000/54/EC</a> Act on the Prevention of Infectious Diseases and Medical Care for Patients with Infectious Diseases</a> 
                              (Infectious Disease Control Act) : <a href="">Ministry of Health, Labour and Welfare</a>
                            </li>
                            <li>
                              <a href="">Act on Domestic Animal Diseases Control</a> : <a href="">Ministry of Agriculture, Forestry and Fisheries</a>
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
                              Act on the Conservation and Sustainable Use of Biological Diversity through Regulations on the Use of Living Modified Organisms: Ministry of Environment; Ministry of Finance; Ministry of 
                              Education, Culture, Sports, Science and Technology; Ministry of Health, Labour and Welfare; Ministry of Agriculture, Forestry and Fisheries; Ministry of Economy, Trade and Industry
                            </li>
                            <li>
                              Industrial Safety and Health Act (mainly chemical hazards): Ministry of Health, Labour and Welfare
                            </li>
                            <li>
                              <a href="">Biological Weapons Convention Act</a>: <a href="">Ministry of Foreign Affairs</a>
                            </li>
                            <li>
                              <a href="">Foreign Exchange &amp; Foreign Trade Act</a> (for export of pathogens): Ministry of Economy, Trade and Industry
                            </li>
                            <li>
                              <a href="">Public Safety Commission</a>: for transport of pathogens
                            </li>
                            <li>
                              <a href="">National Institute for Infectious Diseases</a> : research on a variety of contagious diseases from the standpoint of preventive medicine, improving human health and 
                              welfare by suppressing infectious diseases, and clarifying and supporting the scientific background of health and medical administration of the government
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