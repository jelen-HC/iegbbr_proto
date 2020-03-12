import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Sgp extends StatelessWidget {
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
                      'Singapore',
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
                              <a href="">Biological Agents and Toxins Act</a> 2005 and its subsidiary legislation: <a href="">Ministry of Health</a>
                            </li>
                            <ul>
                              <li>
                                <a href="">Biological Agents and Toxins (Transportation) Regulations 2005</a>
                              </li>
                              <li>
                                <a href="">Biological Agents and Toxins (Proficiency Testing) Regulations 2008</a>
                              </li>
                              <li>
                                <a href="">Biological Agents and Toxins (Exemption) Regulations 2009</a>
                              </li>
                            </ul>
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
                              <a href="">Animals and Birds Act</a> : <a href="">Animal and Veterinary Services</a>; an Act for preventing the introduction into, 
                              and the spreading within, Singapore of diseases of animals, birds or fish; for the control of the  movement of animals, birds or 
                              fish into, within and from Singapore; for the prevention of cruelty to animals, birds or fish; for measures pertaining to the general 
                              welfare and improvement of animals, birds or fish in Singapore and for purposes incidental thereto.
                            </li>
                            <li>
                              <a href="">Infrastructure Protection Act</a> : Ministry of Home Affairs; an Act to provide for the protection of certain areas, places 
                              and other premises in Singapore against security risks, to repeal the Protected Areas and Protected Places Act and to make consequential 
                              amendments to certain Acts.
                            </li>
                            <li>
                              <a href="">Workplace Safety and Health Act</a> : Ministry of Manpower; an Act relating to the safety, health and welfare of people at work in workplaces.
                            </li>
                            <li>
                              <a href="">Strategic Goods (Control) Act</a> : Singapore Customs; an Act to control the transfer and brokering of strategic goods, strategic goods 
                              technology, goods and technology capable of being used to develop, produce, operate, stockpile or acquire weapons capable of causing mass destruction, 
                              and missiles capable of delivering such weapons.
                            </li>
                            <li>
                              <a href="">Environmental Public Health Act</a> - Environmental Public Health (Toxic Industrial Waste) Regulations
                              National Environmental Health Agency; an Act to consolidate the law relating to environmental public health and to provide for matters connected there with.
                            </li>
                            <li>
                              <a href="">Private Hospitals and Medical Clinics Act</a>: Ministry of Health; an Act to provide for the control, licensing and inspection of private hospitals, 
                              medical clinics, clinical laboratories and healthcare establishments, and for purposes connected therewith.
                            </li>
                            <li>
                              <a href="">Singapore Guidelines for Research on Genetically Modified Organisms (GMOs)</a>: Genetic Modification Advisory Committee (established under the 
                              purview of the Ministry of Trade and Industry); aims to ensure safe containment, handling and transport of genetically modified organisms used in research 
                              and to provide a common framework for assessment and notification of research on genetically modified organisms.
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