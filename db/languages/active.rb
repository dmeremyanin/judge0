@languages ||= []
@languages +=
[
  {
    id: 43,
    name: "Plain Text",
    is_archived: false,
    source_file: "text.txt",
    run_cmd: "/bin/cat text.txt"
  },
  {
    id: 44,
    name: "Executable",
    is_archived: false,
    source_file: "a.out",
    run_cmd: "/bin/chmod +x a.out && ./a.out"
  },
  {
    id: 89,
    name: "Multi-file program",
    is_archived: false,
  },
  {
    id: 1047,
    name: "Basic (FBC 1.10.1)",
    is_archived: false,
    source_file: "main.bas",
    compile_cmd: "/usr/local/fbc-1.10.1/bin/fbc %s main.bas",
    run_cmd: "./main"
  },
  {
    id: 1050,
    name: "C (GCC 14.3.0)",
    is_archived: false,
    source_file: "main.c",
    compile_cmd: "/usr/local/gcc-14.3.0/bin/gcc %s main.c",
    run_cmd: "./a.out"
  },
  {
    id: 1051,
    name: "C# (Mono 6.12.0.199)",
    is_archived: false,
    source_file: "Main.cs",
    compile_cmd: "/usr/local/mono-6.12.0.199/bin/mcs %s Main.cs",
    run_cmd: "/usr/local/mono-6.12.0.199/bin/mono Main.exe"
  },
  {
    id: 1054,
    name: "C++ (GCC 14.3.0)",
    is_archived: false,
    source_file: "main.cpp",
    compile_cmd: "/usr/local/gcc-14.3.0/bin/g++ %s main.cpp",
    run_cmd: "LD_LIBRARY_PATH=/usr/local/gcc-14.3.0/lib64 ./a.out"
  },
  {
    id: 1060,
    name: "Go (1.24.4)",
    is_archived: false,
    source_file: "main.go",
    compile_cmd: "GOCACHE=/tmp/.cache/go-build /usr/local/go-1.24.4/bin/go build %s main.go",
    run_cmd: "./main"
  },
  {
    id: 1062,
    name: "Java (OpenJDK 24.0.1)",
    is_archived: false,
    source_file: "Main.java",
    compile_cmd: "/usr/local/openjdk24/bin/javac %s Main.java",
    run_cmd: "/usr/local/openjdk24/bin/java Main"
  },
  {
    id: 1063,
    name: "JavaScript (Node.js 22.17.0)",
    is_archived: false,
    source_file: "script.js",
    run_cmd: "/usr/local/node-22.17.0/bin/node script.js"
  },
  {
    id: 1067,
    name: "Pascal (FPC 3.2.2)",
    is_archived: false,
    source_file: "main.pas",
    compile_cmd: "/usr/local/fpc-3.2.2/bin/fpc %s main.pas",
    run_cmd: "./main"
  },
  {
    id: 1071,
    name: "Python (3.13.5)",
    is_archived: false,
    source_file: "script.py",
    run_cmd: "/usr/local/python-3.13.5/bin/python3 script.py"
  },
  {
    id: 1072,
    name: "Ruby (3.4.4)",
    is_archived: false,
    source_file: "script.rb",
    run_cmd: "/usr/local/ruby-3.4.4/bin/ruby script.rb"
  },
  {
    id: 1073,
    name: "Rust (1.88.0)",
    is_archived: false,
    source_file: "main.rs",
    compile_cmd: "/usr/local/rust-1.88.0/bin/rustc %s main.rs",
    run_cmd: "./main"
  },
  {
    id: 1074,
    name: "TypeScript (5.8.3)",
    is_archived: false,
    source_file: "script.ts",
    compile_cmd: "/usr/bin/tsc %s script.ts",
    run_cmd: "/usr/local/node-22.17.0/bin/node script.js"
  },
  {
    id: 1078,
    name: "Kotlin (2.2.0)",
    is_archived: false,
    source_file: "Main.kt",
    compile_cmd: "/usr/local/kotlin-2.2.0/bin/kotlinc %s Main.kt",
    run_cmd: "/usr/local/kotlin-2.2.0/bin/kotlin MainKt"
  },
  {
    id: 1082,
    name: "SQL (SQLite 3.40.1)",
    is_archived: false,
    source_file: "script.sql",
    run_cmd: "/bin/cat script.sql | /usr/bin/sqlite3 db.sqlite"
  },
  {
    id: 1085,
    name: "Perl (5.36.0)",
    is_archived: false,
    source_file: "script.pl",
    run_cmd: "/usr/bin/perl script.pl"
  }
]
