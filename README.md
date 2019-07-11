# Recipe Flutter Client

A flutter mobile client application to serve the node-recipe-server backend. 

## Getting Started
 Clone the repository, then find the pubspec.yaml file and run a 'packages get' from your IDE. You can also do this via terminal.
 
 #### Instructions here. 
 1.- [https://flutter.dev/docs/development/packages-and-plugins/using-packages](https://flutter.dev/docs/development/packages-and-plugins/using-packages)
 
 2.- [https://dartcode.org/docs/commands/](https://dartcode.org/docs/commands/)
 
 #### After packages have been installed/ updated
 Run the command Flutter doctor from your ide or in terminal run 'flutter doctor', this will check for any dependency, license or emulator/device issues. Great tool. 
 
 #### Run the app
 After all the top is completed, you can now run the project via your ide or in terminal/cmd with 'flutter run'. 
 **Note** Be sure to have a device connected or an emulator running. 
 
#### Emulator Instructions 
[Android](https://flutter.dev/docs/get-started/install/windows#get-the-flutter-sdk)

[IOS](https://flutter.dev/docs/get-started/install/macos())

## Contributing
#### Branching 
The project has a master and dev branch. 

When working on a new feature, create a descriptively named feature branch using underscores and starting with 'feature'.
__Example:__ feature_added_login_page

When working on a bug or hotfix, create a descriptively named 'bug' branch using underscores and starting with the bug or issue number. 

__Example:__ bug_code_login_page_button

#### Submitting a PR
When work on your feature/bug branch is completed, commit the changes to the branch. Then checkout dev, do a git pull and once updated, go back to your working branch and merge dev into it. This will allow you to fix any conflict issues locally before submitting the PR. 

Once you've ensured there are no merge conflict issues, push your branch using __git push --set-upstream origin {branch name}__. 

Create the PR with a description and add @MannyDiera as the reviewer. Once the PR is approved and merged into dev, you can safely delete your feature/bug branch. 

