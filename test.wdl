version 1.0

# Test workflow for getting started with WDL on Terra

workflow TestWorkflow {
  input {
    String input_string
  }

  call TestTask {
    input:
      input_string = input_string
  }

  output {
      File output_file = TestTask.output_file
  }
}

task TestTask {
  input {
    String input_string
  }

  command <<<
    echo "Hello, ~{input_string}!" > test.txt
    echo "This is a test of WDL on Terra." >> test.txt
    echo "This is a second line." >> test.txt
    echo "To see if terra automatically updates the workflow." >> test.txt
    echo "One more line" >> test.txt
  >>>

  output {
    File output_file = "test.txt"
  }

  runtime {
    docker: "ubuntu:latest"
  }
}
