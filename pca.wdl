version 1.0

# Test workflow for getting started with WDL on Terra

workflow PCAWorkflow {
  input {
    String pca_input_string
  }

  call TestTask {
    input:
      input_string = pca_input_string
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
    echo "Hello, ~{input_string}!" > pca_test.txt
    echo "This is a PCA test of WDL on Terra." >> test.txt
  >>>

  output {
    File output_file = "test.txt"
  }

  runtime {
    docker: "ubuntu:latest"
  }
}
