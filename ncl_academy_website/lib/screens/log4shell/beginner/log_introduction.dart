import '../../../import.dart';

// Constructor:
// IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle,
//    this.videoUrl, this.textMaterial, this.nextPage);
class Log4ShellIntroPage extends StatelessWidget {
  const Log4ShellIntroPage();

  @override
  Widget build(BuildContext context) {
    return IntroductionTemplate(
        "Log4shell",
        "Beginner Level",
        "INTRODUCTION TO LOG4SHELL",
        "Welcome to our Log4shell vulnerability tutorial.In this video, we will discuss how a log4shell attack happens.",
        "https://youtu.be/rgYZ4CLe2Vg",
        "\n To get to learn how to replicate this vulnerability in the NCL test bed, please check out our next video! With that introduction, let us continue with the tutorial. \n With log4shell exploit, the hacker will be able to remotely exert control over any web service, where he can read confidential data or stop the service from functioning completely.The severity of the log4shell vulnerability comes from the relative ease of learning and execution of it, making it a popular choice among malicious cyber-attack groups.In many cases, the only viable solution to a log4shell attack is to completely shut down the webservice. That, coupled with its relatively easy execution, makes it a deadly combo of a vulnerability.A hacker needs several things to perform a log4shell exploit, which are log4j, JNDI, and LDAP. \n\n What is log4j? \n\n Log4j is a java-based network logger. What it does is, it records every action performed by network entities in a network, from data accessing and retrieving to errors and crash reports. It is an important tool for monitoring network health and functionality. \n\n What is JNDI? \n\n The Log4shell exploit is possible thanks to an unintended functionality of log4j. This feature is called JNDI lookup or JNDI querying. This feature allows the webserver to access other services in an abstract manner. This facilitates more cohesive interaction among web services that are written in a fundamentally different architectures. At least, that was the original intended purpose of this feature. \n\n What is LDAP? \n\n JNDI queries are facilitated by a type of server protocol called, LDAP or Lightweight Directory Access Protocol. LDAP servers are used to handle these JNDI queries. Whenever a JNDI query is made, the request is sent to the LDAP server and the relevant code is retrieved and substituted in to the webservice runtime for execution.  \n\n  In a severe design oversight, these JNDI queries were implemented in a poor manner. In log4j, JNDI requests are allowed for third party LDAP servers without any restriction. What this means is that someone can reference a JNDI query to an arbitrary server and the log4j framework will not try to perform a security check before loading what was referenced by the query. \n\n With a cleverly crafted strings of text, a hacker can easily trick the webserver to load whatever code that he wishes from his own private LDAP server. These LDAP servers are hosted by hackers and will usually contain java classes and methods which can be used to compromise the system. \n\n Log4j will load the code from the location specified in the JNDI request. When the code is executed, the hacker will be able to remotely exert control over this web service, where he can read confidential data or stop the service from functioning completely. \n\n\n In the next video we will be looking in to how you can recreate this vulnerability in a controlled environment using resources from NCL Singapore.  ",
        "/log_setting_up");
  }
}
