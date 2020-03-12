import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Deu extends StatelessWidget {
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
                      color: Colors.black54,
                      size: 120.0,
                    )
                ),
                Flexible(
                  child: Center(
                    child: Text(
                      'Germany',
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
                              <a href="">Act on Safety and Health at Work</a> : <a href="">Federal Ministry of Labour and Social Affairs</a>
                            </li>
                            <li>
                              <a href="">Ordinance on Safety and Health Protection at Workplaces Involving Biological Agents</a> (Biological Agents Ordinance – BioStoffV): Federal 
                              Ministry of Labour and Social Affairs
                            </li>
                            <li>
                              <a href="">Genetic Engineering Act</a> and the Ordinance on Safety of Genetic Engineering <a href="">Federal Ministry of Food and Agriculture</a>
                            </li>
                            <li>
                              <a href="">Law for the Prevention of Infection and Protection Against Infection Act</a> (IFSG): <a href="">Federal Ministry of Health</a>
                            </li>
                            <li>
                              <a href="">Hazardous Substances Ordinance</a> (GefStoffV)
                            </li>
                            <li>
                              <a href="">War Weapons Control Act</a> : <a href="">Federal Foreign Office</a>
                            </li>
                            <li>
                              <a href="">Ordinance on the Transport of Dangerous Goods by Road, Rail and Inland Waterways</a> : <a href="">Federal Ministry of Transport and Digital 
                              Infrastructure</a>
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
                              <a href="">Committee on Biological Agents</a> organized by the Federal Institute for Occupational Safety and Health, acts as a national 
                              commission; advises the Federal Ministry of Labour and Social Affairs; publishes <a href="">Technical Rules for Biological Agents</a>
                              based on the BioStoffV
                            </li>
                            <li>
                              Central Committee on Biological Safety (ZKBS) organized by the Federal Office of Consumer Protection and Food Safety, acts as a national 
                              commission; advises the Federal Ministry of Food and Agriculture on genetically modified organisms
                            </li>
                            <li>
                              <a href="">Robert Koch Institute</a> – the national public health institute that advises on health-related questions of biosafety / biosecurity
                            </li>
                            <li>
                              <a href="">Centre for Biological Threat and Special Pathogens</a>
                            </li>
                            <li>
                              <a href="">The Federal Institute for Risk Assessment</a>
                            </li>
                            <li>
                              Animal Pathogen Ordinance : Federal Ministry of Food and Agriculture
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
            SizedBox(height: 55.0),
          ],
        ),
      ),
    );
  }
}