import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Aus extends StatelessWidget {
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
                      'Australia',
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
                              <a href="https://www.legislation.gov.au/Details/C2016C00847/">National Health Security Act 2007</a> 
                              <a href="http://www.health.gov.au/">Department of Health</a>
                            </li>
                            <li>
                              <a href="">National Health Security Regulations 2008</a> : Department of Health
                            </li>
                            <li>
                              <a href="">Security Sensitive Biological Agent Standards</a> : Department of Health
                            </li>
                            <li>
                              <a href="">Biosecurity Act 2015</a> : <a href="">Department of Agriculture and Water Resources</a> (human health aspects are the responsibility of the Department of Health)
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
                              <a href="">Department of Foreign Affairs and Trade</a> deals with upholding and implementing the Biological and Toxin Weapons Convention, along with other export 
                              control programs
                            </li>
                            <li>
                              <a href="">Department of Defence</a> also plays a role in Australian export controls and 
                              information and communications technology, which can touch upon and overlap with biosafety and biosecurity efforts
                            </li>
                            <li>
                              <a href="">Department of Home Affairs</a> helps support the Biosecurity Act 2015 by dealing with imports made from or including animal products
                            </li>
                            <li>
                              <a href="">Work Health and Safety Act 2011</a> and <a href="">Work Health and Safety Regulations 2011</a> : legislation that addresses biosafety
                            </li>
                            <li>
                              <a href="">Gene Technology Act 2000</a> : <a href="">Office of the Gene Technology Regulator</a> (OGTR)
                            </li>
                            <li>
                              <a href="">Gene Technology Regulations</a>
                            </li>
                            <li>
                              <a href="">Australian Dangerous Goods Code for Road and Rail</a>
                            </li>
                            <li>
                              <a href="">SAI Global</a> (Standards Australia)
                            </li>
                            <li>
                              Council of Australian Governments <a href="">Intergovernmental Agreement on Biosecurity</a>; <a href="">National Environmental Biosecurity Response Agreement</a>
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