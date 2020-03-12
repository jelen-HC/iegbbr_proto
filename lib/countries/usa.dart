import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Usa extends StatelessWidget {
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
                      'United States',
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
                              <a href="">Public Health Security and Bioterrorism Preparedness and Response Act of 2002</a>: <a href="">Department of Health and Human Services</a> and 
                              <a href="">Animal and Plant Health Inspection Service</a> of the <a href="">US Department of Agriculture</a>
                            </li>
                            <li>
                              The Uniting and Strengthening America by Providing Appropriate Tools Required to Intercept and Obstruct Terrorism Act of 2001 also referred to as the 
                              <a href="">USA PATRIOT Act of 2001</a>: Multiple government agencies and departments
                            </li>
                            <li>
                              <a href="">Federal Select Agents and Toxins / Federal  Select Agent Program</a>: Department of Health and Human Services and United States Department of Agriculture
                            </li>
                            <ul>
                              <li>
                                The Division of Select Agents and Toxins at the Centers for Disease Control and Prevention, which is part of the Department of Health and Human Services, 
                                regulates the select agents and toxins that have the potential to pose a severe threat to public health and safety.
                              </li>
                              <li>
                                The Agriculture Select Agent Services at Animal and Plant Health Inspection Service regulates select agents that have the potential to pose a severe threat to 
                                animals and plants and animal and plant products.
                              </li>
                              <li>
                                Overlap (zoonotic) select agents are subject to regulation by both Animal and Plant Health Inspection Service and the Centers for Disease Control and Prevention.
                              </li>
                              <li>
                                The Centers for Disease Control and Prevention has the primary responsibility for implementing the provisions of the act and regulations for the Department of 
                                Health and Human Services.
                              </li>
                              <li>
                                The Select Agent Regulations include:
                              </li>
                              <ul>
                                <li>
                                  <a href="">42 CFR Part 73 (Public Health – Select Agents and Toxins)</a>: Centers for Disease Control and Prevention, Department of Health and Human Services
                                </li>
                                <li>
                                  <a href="">7 CFR Part 331 (Agriculture – Possession, Use, and Transfers of Select Agents and Toxins)</a>: Animal and Plant Health Inspection Service
                                </li>
                                <li>
                                  <a href="">9 CFR Part 121 (Animals and Animal Products - Possession, Use, and Transfers of Select Agents and Toxins)</a>: Animal and Plant Health Inspection Service
                                </li>
                              </ul>
                            </ul>
                            <li>
                              <a href="">Biological Weapons Anti-Terrorism Act of 1989</a>
                            </li>
                            <li>
                              <a href="">Antiterrorism and Effective Death Penalty Act of 1996</a>
                            </li>
                            <li>
                              <a href="">18 USC ss.175-178</a> - Biological Weapons
                            </li>
                            <li>
                              <a href="">18 USC ss.2332a - Use of weapons of mass destruction Occupational Safety and Health Act of 1970</a> Occupational Safety and Health Act: <a href="">Occupational Safety and 
                              Health Administration, US Department of Labor</a> and <a href="">National Institute for Occupational Safety and Health</a>, and <a href="">National Institute for Occupational Safety
                              and Health, Department of Health and Human Services</a>
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
                              <a href="">49 CFR 171-180-Transportation</a> : The Research and Special Administration of the Department of Transportation in August of 2002 revised 
                              transportation requirements for infectious substances, including regulated medical waste. These revisions will assure an acceptable level of safety 
                              for the transportation of infectious substances, and facilitate domestic and international transportation.
                            </li>
                            <li>
                              <a href="">21 USC 151-159- Viruses, Serums, Toxins, Antitoxins, and Analogous Products</a> : This code prohibits the preparation and sale of worthless 
                              or harmful products for domestic animals unless prepared in compliance with rules at licensed establishments.
                            </li>
                            <li>
                              <a href="">42 USC 262-Licensing of biological products and Clinical laboratories. Subpart 1--Biological Products</a> : The Department of Health and Human 
                              Services regulates the licensing of biological products and clinical laboratories.
                            </li>
                            <li>
                              Biological Policy Staff at the Department of State are tasked with overseeing US implementation of the Biological and Toxin Weapons Convention, organizing 
                              US participation in Biological and Toxin Weapons Convention meetings, and developing and promoting measures to prevent the misuse of life sciences.
                            </li>
                            <li>
                              The Office of Laboratory Sciences and Safety (est. 2016) operates in conjunction with the Food and Drug Administration -wide Environment, Health, and
                              Safety program (biosafety and biosecurity in labs is part of their purposes, scope, mandate, and goals)
                            </li>
                            <li>
                              <a href="">The Advisory Committee on Biotechnology and 21st Century Agriculture</a> (AC21)
                            </li>
                            <li>
                              The <a href="">State Biomonitoring Cooperative Agreement</a> to increase the capability and capacity of states to conduct biomonitoring and state 
                              population-based biomonitoring surveillance to assess human exposure to environmental chemicals.
                            </li>
                            <li>
                              The <a href="">Association of Public Health Laboratories</a> capability and capacity of states to conduct biomonitoring and state population-based biomonitoring 
                              surveillance to assess human exposure to environmental chemicals.
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