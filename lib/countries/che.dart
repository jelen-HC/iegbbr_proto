import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Che extends StatelessWidget {
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
                      color: Colors.redAccent,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'Switzerland',
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
                              CC 814.912 <a href="">Ordinance on Handling Organisms in Contained Systems</a> (ContainO)
                            </li>
                            <li>
                              CC 814.01 Federal Act on the Protection of the Environment
                            </li>
                            <li>
                              814.91 <a href="">Federal Act on Non-Human Gene Technology</a>
                            </li>
                            <li>
                              RS 818.101 <a href="">Federal Law on the Fight Against Communicable Diseases in Humans</a>
                            </li>
                            <li>
                              RS 832.321 <a href="">Ordinance on the Protection of Workers Against Risks related to Microorganisms</a>
                            </li>
                            <li>
                              RS 822.111.52 <a href="">Ordinance on Maternity Protection</a> concerning Dangerous/Strenuous Activities
                            </li>
                            <li>
                              RS 822.115.2 <a href="">Ordinance on Dangerous Work for Youth</a>
                            </li>
                            <li>
                              CC 814.012 <a href="">Ordinance on Protection against Major Accidents</a>
                            </li>
                            <li>
                              RS 514.51 <a href="">Federal Act on War Material</a>
                            </li>
                          </ul>
                          <p>
                          The Ordinances are generally implemented by the Federal Office for the Environment and the Federal Office of Public Health. Inspections 
                          are carried out by the cantons. Other involved authorities/agencies are:
                          </p>
                          <ul>
                            <li><a href="">Federal Coordination Centre for Biotechnology</a></li>
                            <li><a href="">Federal Food Safety and Veterinary Office</a></li>
                            <li><a href="">State Secretariat for Economic Affairs</a></li>
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
                              <a href="">Swiss Expert Committee for Biosafety</a> advises the Federal Council and the federal agencies on the drafting of laws, ordinances, guidelines and recommendations; 
                              advises the federal and cantonal authorities on regulatory enforcement; issues statements on licence applications and publishes recommendations on safety measures
                            </li>
                            <li>
                              <a href="">Swiss National Accident Insurance Fund</a> is a part of the social security system that provides compulsory insurance for employees and the unemployed against 
                              accidents and occupational diseases
                            </li>
                            <li>
                              <a href="">The Spiez Laboratory</a> is a division of the Federal Office for Civil Protection that provides services relating to arms control, protection measures, health 
                              and incident management for international organisations, authorities and the general population
                            </li>
                            <li>
                              <a href="">Federal Ethics Committee on Non-human Gene Technology</a> advises the federal authorities from an ethical perspective, as an independent expert committee, in 
                              the field of non-human biotechnology and gene technology
                            </li>
                            <li>
                              <a href="">State Secretariat for Economic Affairs is responsible for labour market policy including working conditions and employee protection</a>
                            </li>
                            <li>
                              <a href="">Swiss Armed Forces (Military Security)</a>
                            </li>
                            <li>
                              Intercantonal experience exchange group of services involved in bio and gene technology (ERFA BIO)
                            </li>
                          </ul>
                          <p><strong>Duties of the cantons:</strong></p>
                          <p>The cantons monitor compliance with the duty of care, the containment obligation and the safety measures.</p>
                          <p> </p>
                       """,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Color.fromRGBO(200, 190, 190, 0.1),
              defaultTextStyle: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 55.0),
          ],
        ),
      ),
    );
  }
}