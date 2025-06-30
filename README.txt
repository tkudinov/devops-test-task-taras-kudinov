                                             DEVOPS_TEST_TASK

   The main purpose of this test repository is the hello.sh script in the /scripts directory which performs three main functions:
      ● Prints “Hello from Bash!” to the screen.
      ● Displays the current date and time.
      ● Counts the number of files in the current directory.
      ● Additional functionality (log-file creation, execution info appending to logs/history.txt.
   Also current repository contain run-script.yml configuration file which is responsible for GitHub Action workflow creation. This
   workflow can be triggered by: any push to the main branch; pull requests targeting the main branch; manually via workflow_dispatch
   with an optional log filename parameter. One of the main steps is the hello.sh script execution. After successful script execution
   follows validation of: new log file creation; that the log file contains: greeting message; valid timestamp; numeric value for file count.;
   The result info of workflow execution must be uploaded as a CI artifact.


   [![Run Hello Script]
   (https://github.com/tkudinov/devops_test_task_Taras_Kudinov/actions/workflows/run-script.yml/badge.svg)]
   (https://github.com/tkudinov/devops_test_task_Taras_Kudinov/actions/workflows/run-script.yml)

   For local script execution you need to work in a Linux distribution or have a bash emulator(Terminal) installed in your operating system.
   After starting Terminal, make hello.sh file executable: sudo chmod +x scripts/hello.sh. And run it: ./scripts/hello.sh. Also script accepts to add
   optional argument for log file name determination. In this case: ./scripts/hello.sh log_file_name. If no argument is passed, default to log-YYYYMMDD_HHMMSS.txt.

   For triggering the GitHub Actions workflow manually needs to go to the GitHub repo (https://github.com/tkudinov/devops_test_task_Taras_Kudinov.git) and
   switch to the Actions tab and select Run Hello Script action than push Run workflow button with ability to add optional parameter as argument for custom name        log-file creation.
