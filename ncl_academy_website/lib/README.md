# General information regarding `lib` directory

## Structure
Currently, the `lib` directory has several sub-directories and files inside it.
1. `components` is a directory that store all custom made components unique to the website. There are buttons, header, footer, content page styling, etc.
2. `screens` is a directory that store all the actual screens presented in the website. There are pages for `chapter_select`, `spring4shell`, `log4shell`, etc.
3. `templates` is a directory that store all templates that can be used easily to create new screen for the website. Instruction on how to use the templates are presented inside the directory.
4. `import.dart` is a unified file that contains all import statements needed.
5. `main.dart` is the main file as well as the landing page of the website.

## How to import
Please follow the steps below.
1. If you need to import external flutter packages, internal screen components, or anything, please go to `import.dart`
2. Inside `import.dart`, you can add the import statement in the specified section according to alphabetical ordering. The only thing that you need to change is instead of `import`, use `export`
3. After that, you can go to your file and add `import 'import.dart';` to automatically import all the things you need. Please also take note of the use of `../` before `import.dart` in case your file is located in sub-directory
4. Finally, do not forget to go to `import.dart` and also add your newly created file export statement. This is to ensure that `import.dart` stays complete and can be easily used by others

## Sub-directories
In case you need to rename, move files, or create new sub-directories, please use refractor function (this is usually automatically done by your IDE) to ensure that all the routing, referencing and navigation stays true.
