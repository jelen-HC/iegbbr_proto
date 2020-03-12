import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Uk extends StatelessWidget {
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
                      'United Kingdom',
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
                          <p>Health and Safety Executive, Department for the Environment, Food and Rural Affairs, Scottish Government:</p>
                          <ul>
                            <li>
                              <a href="">Health and Safety at Work etc. Act 1974</a>
                            </li>
                            <li>
                              <a href="">The Genetically Modified Organisms (Contained Use) Regulations 2014</a>
                            </li>
                            <li>
                              <a href="">The Control of Substances Hazardous to Health Regulations 2002</a>
                            </li>
                            <li>
                              <a href="">The Management of Health and Safety at Work Regulations 1999</a>
                            </li>
                            <li>
                              <a href="">The Carriage of Dangerous Goods and Use of Transportable Pressure Equipment Regulations 2009</a>
                            </li>
                            <li>
                              <a href="">The Specified Animal Pathogens Order 2008</a>
                            </li>
                            <li>
                              <a href="">The Anti-Terrorism, Crime and Security Act 2001</a> (parts 6 & 7): Home Office (via National Counter Terrorism Security Office (NaCTSO))
                            </li>
                            <li>
                              <a href="">The Security of Pathogens and Toxins (Exceptions to Dangerous Substances) Regulations 2002</a>: Home Office (via National Counter Terrorism Security Office)
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
                          <p>The <a href="">Synthetic Biology Leadership Council</a> and Governance Subgroup:</p>
                          <ul>
                            <li>
                              Charged with delivering an adaptive regulatory approach that instils public confidence and enhances UK’s informational reputation as a leader in synthetic biology; 
                              developing a supportive business environment; and establishing pool of sector specific regulations and practices to support safe development of synthetic biology.
                            </li>
                          </ul>
                          <p>The <a href="">Institute for Safety in Technology and Research</a> :</p>
                          <ul>
                            <li>
                              Works with stakeholders to develop industry led guidelines and training concerning infected or genetically modified insects.
                            </li>
                          </ul>
                          <p>Department for the Environment, Food and Rural Affairs:</p>
                          <ul>
                            <li>
                              Joint meetings of advisory committees to provide advice and assurance to the government and public on the safety and environmental protections from new 
                              techniques and technologies in biotechnology
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