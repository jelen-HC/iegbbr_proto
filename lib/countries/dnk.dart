import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Dnk extends StatelessWidget {
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
                      'Denmark',
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
                              <a href="">Act on securing specific biological substances, delivery systems and related materials</a> : Centre for Biosecurity and Biopreparedness, 
                              Statens Serum Institut; Ministry of Health
                            </li>
                            <li>
                              <a href="">Executive Order on securing specific biological substances, delivery systems and related materials</a> : Centre for Biosecurity and 
                              Biopreparedness; Ministry of Health
                            </li>
                            <li>
                              <a href="">Act on Control of Animal Pathogens</a> : Centre for Biosecurity and Biopreparedness; Ministry of Environment and Food of Denmark
                            </li>
                            <li>
                              <a href="">Order on the control of certain substances that can be used in connection with biological attacks on animals</a> : In terms 
                              of control of animal pathogens, Centre for Biosecurity and Biopreparedness; Ministry of Environment and Food of Denmark
                            </li>
                            <li>
                              Act on revision <a href="">of health regulation concerning measures of control in relation to poliovirus and other biological substances</a> 
                              (in Danish): Centre for Biosecurity and Biopreparedness, Statens Serum Institut; Ministry of Health
                            </li>
                          </ul>
                          <p>
                            Biosafety is addressed by the <a href="">Danish Working Environment Authority</a>. At minimum, 
                            the European Union Directives related to biosafety and biosecurity are implemented at a national level.
                          </p>
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
                              Act No. 356 of 6 June 1991 on the Environment and Genetic Engineering (Latest amended by Act No. 384 of 6 June 2002)
                            </li>
                            <li>
                              See Consolidated Act No. 981 of 3 December 2002
                            </li>
                            <li>
                              Statutory Order on deliberate release into the environment of genetically modified organisms (No. 831 of 3 October 2002) Annex
                            </li>
                            <li>
                              Statutory Order on the approval of production using genetically modified micro-organisms (No. 830 of 3 October 2002)
                            </li>
                            <li>
                              Statutory Order on the approval of production using genetically modified plants and animals (No. 829 of 3 October 2002)
                            </li>
                            <li>
                              Statutory Order on transport and import of genetically modified organisms (No. 380 of 17 May 2000)
                            </li>
                            <li>
                              Statutory Order on the approval of display of genetically modified organisms and dissemination of information involving genetically modified organisms (No. 370 of 17 May 2000)
                            </li>
                            <li>
                              Statutory Order on fees according to Act on the Environment and Genetic Engineering (No. 687 of 11 November 1991 – No English version)
                            </li>
                            <li>
                              Statutory Order on Genetic Engineering and the Working Environment (No. 642 of 28 June 2001) (Issued by the Danish Working Environment Authority)
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