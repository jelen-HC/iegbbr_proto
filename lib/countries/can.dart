import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Can extends StatelessWidget {
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
                      'Canada',
                      style: TextStyle(
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
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
                              <a href="">Directive 2000/54/EC</a> Human Pathogens and Toxins Act : Public Health Agency of Canada
                            </li>
                            <li>
                              <a href="">Human Pathogens and Toxins Regulations</a> : Public Health Agency of Canada
                            </li>
                            <li>
                              <a href="">Health of Animals Act</a> : Canadian Food Inspection Agency and Public Health Agency of Canada
                            </li>
                            <li>
                              <a href="">Health of Animals Regulations</a> : Canadian Food Inspection Agency and Public Health Agency of Canada
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
                              <a href="">Export and Import Permits Act</a> : Global Affairs Canada administers export controls for strategic goods and technology
                            </li>
                            <li>
                              <a href="">Food and Drugs Act</a> : Health Canada conducts 
                              human health risk assessments for new organisms in regulated products (e.g., novel foods, human biologics, and food additives) 
                              and recommends risk management measures
                            </li>
                            <li>
                              <a href="">Transportation of Dangerous Goods Act, 1992</a> : Transport Canada promotes public safety in the transportation of 
                              dangerous goods and covers, among other things, safety and security requirements, emergency response plans, containment and 
                              shipping rules and standards, inspection and monitoring, and certification
                            </li>
                            <li>
                              <a href="">Canadian Environmental Protection Act</a> : Environment and Climate Change Canada is responsible for the assessment 
                              of new varieties of microorganisms and other organisms prior to their introduction into the environment, so as to protect both 
                              human health and the environment from any potentially adverse effects
                            </li>
                            <li>
                              <a href="">Canada Labour Code</a> : Employment and Social Development Canada administers the Occupational Health and Safety 
                              requirements to prevent accidents and injury to health arising out of, linked with or occurring in the course of employment
                            </li>
                          </ul>
                          <p>The Canada Border Services Agency provides integrated border services that support national security and public safety priorities and, 
                          at the same time, facilitate the free flow of persons and goods. Under the <a href="">Customs Act</a>, Canada Border Services Agency customs 
                          officers have the authority to detain and examine any goods at the Canadian border. Canada Border Services Agency provides administrative 
                          support at the Canadian points of entry for imported and exported pathogens and toxins under the authorities of the Public Health Agency of 
                          Canada, Canadian Food Inspection Agency and Transport Canada.
                          </p>
                          <p>For Human Pathogens and Toxins Act-related biosafety and biosecurity, the <a href="">Advisory Committee on Human Pathogens and Toxins</a> 
                          has been established as required by the Public Health Agency of Canada and in order to advise the Minister, amongst other advisory roles and duties.
                          </p>
                          <p>
                          In general the provinces do not have oversight programs related to biosafety and biosecurity for research and development purposes. Many if not all 
                          of them however, have regulations and frameworks to address the disposal of biological or bio-medical (hazardous) waste, as well as occupational health
                          and safety provisions, of which biological agents and microorganisms are often a specified potential hazard. It should be noted that while Ontario has 
                          a ban on the manufacture, supply, and distribution of new biological or chemical agents, they exempt said agents if being handled for research and development.
                          </p>
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
