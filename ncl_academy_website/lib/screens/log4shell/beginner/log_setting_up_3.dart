import '../../../import.dart';

class LogSettingUpPage3 extends StatelessWidget {
  const LogSettingUpPage3();

  @override
  Widget build(BuildContext context) {
    return SettingExecutionTemplate(
        "Log4Shell",
        "Beginner Level",
        "EXECUTION OF THE LOG4SHELL VULNERABILITY",
        "Let's execute and simulate the vulnerability!",
        "This is an explanation on how to simulate the log4shell environment in the NCL testbed.\n",
        "https://youtu.be/VxJ8EAhqIfc ",
        "",
        "\n Okay so we are done setting up the testbed! Now it is play time! Let’s see the execution of this vulnerability from the point of view of a hacker. You are currently on the desktop of the virtual machine. The first thing you do here is execute the “run.sh” script. Right click on it and click on execute. \n\n You will notice three dialogue boxes open.  We will explain what these dialog boxes do later in the video. The next step is to open Firefox and navigate to the web application. So open Firefox and in the search bar and type “localhost:8080” to open your local webserver. Enter the JDI string into the Textbox, give “hello” as your password, and then click on login. JNDI or Java Naming and Directory Interface will provide an interface for you to access the LDAP directory service. \n\n Confused? We will explain exactly what is happening here. Let us look at the three dialog boxes. \n\n -> The first one on the top right is the web application that has been deployed with docker. \n\n ->The second one is the HTTP LDAP Server that will give access to locating data on organizations. In this case, as an example, it is trying to access information from the github repository called “log4j-shell-poc”. \n\n ->The third one is the Netcat reverse shell which creates the connection between the target host and the attacker. \n\n What you are witnessing is a payload exploit. Over here, the HTTP LDAP server is the target. The web application (docker) is the attacker. The reverse shell initiates a connection from the target to the attacker which is in a listening state through port 8080. Now, if the attacker enters any commands in his local machine (also known as Remote Code Execution or RCE), it sends a GET request to the target who sends back information. \n\n In this example, the hacker entered the command “ls” so the target (which is the github repository) sent back all the files it contains. Similarly, you can execute commands and see a proper virtual simulation of this vulnerability.\n\n Now that you are in the simulation provided by NCL, go ahead and enter any command you want and explore the environment!  Have fun! Cheers!   ",
        "/log_setting_up",
        "/log_reference");
  }
}
