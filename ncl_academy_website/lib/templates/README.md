### Instruction on how to create new screens using templates

## Templates
This directory contains templates for pages such as:
1. Introduction
2. Setting up
3. Execution
4. Reference

## How to create new screens
For example, let's say we want to create an introduction page for Log4Shell. Then we can do the following:
1. As usual, create new file inside the screens directory.
2. Import all the import statements by adding: `import 'import.dart';`
Although import.dart is the unified import file, please take note on the directory structure when importing. For example, if your file is located inside a sub-directory of lib, then the proper statement is `import '../import.dart';`. Add `../` for every sub-directory need to be bypassed before reaching your file location.
4. Inside the `introduction_template.dart`, we can see that there is a constructor inside the class. Here is the code snippet:
```
class IntroductionTemplate extends StatelessWidget {

  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String nextPage;

  IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle, this.textMaterial, this.nextPage);
```
 
 Where:
 * `this.title` refers to the biggest title in the page
 * `this.level` refers to the selected level (beginner, intermediate, or advanced)
 * `this.subTitle` refers to second biggest title before the video
 * `this.textTitle` refers to small title before explanation
 * `this.textMaterial` refers to the explanation
 * `this.nextPage` refers to the route to the next page

 This constructor tell us that in order to create a new page, all we need to do is call the constructor and provide the arguments
 
 4. For example, after step 2, we then can type in the following:
 ```
 class Log4ShellIntroPage extends StatelessWidget {
  const Log4ShellIntroPage();

  @override
  Widget build(BuildContext context) {
    return IntroductionTemplate(
      "Introduction to Log4Shell", "Beginner Level",
      "Getting Started", "What is log4shell?",
      "This is explanation about log4shell",
      "/log4shell_setting_up"
    );
  }
}

```
5. After that, the Log4Shell page is done. We only need to import and set the routing to the new page in `main.dart`
