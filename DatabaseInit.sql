DELETE FROM dbo.Attempt;
DELETE FROM dbo.Quiz;

DECLARE @json NVARCHAR(MAX);

SET @json = N'[
  {
    "title": "Up & Going",
    "description": "Into Programming & Into JavaScript",
    "questions": [
      {
        "description": "How many expressions are there in the following statement: <code>a = b * 2;<\/code>?",
        "choices": [
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": false
          },
          {
            "description": "3",
            "isCorrect": false
          },
          {
            "description": "4",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Interpreting the code is when... ?",
        "choices": [
          {
            "description": "Translation of commands is typically done from top to bottom, line by line, every time the program is run.",
            "isCorrect": false
          },
          {
            "description": "Changes to values are tracked as your program runs.",
            "isCorrect": false
          },
          {
            "description": "Actions are performed with values and variables such as assignment and mathematic multiplication.",
            "isCorrect": true
          },
          {
            "description": "The translation of commands is done ahead of time so when the program is executed, what''s running is the already translated computer instructions.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Compiling is when...?",
        "choices": [
          {
            "description": "Changes to values are tracked as your program runs.",
            "isCorrect": false
          },
          {
            "description": "The translation of commands is done ahead of time so when the program is executed, what''s running is the already translated computer instructions.",
            "isCorrect": true
          },
          {
            "description": "Translation of commands is typically done from top to bottom, line by line, every time the program is run.",
            "isCorrect": false
          },
          {
            "description": "Actions are performed with values and variables such as assignment and mathematic multiplication.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next expressions has exactly one literal value, one variable, and one operator?",
        "choices": [
          {
            "description": "var even = 4;",
            "isCorrect": true
          },
          {
            "description": "var bool = 5 > minimum;",
            "isCorrect": false
          },
          {
            "description": "var newCounter = oldCounter + 1;",
            "isCorrect": false
          },
          {
            "description": "var farm = \"cat\" + \"dog\" + \"cow\";",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next equations will output the boolean value false?",
        "choices": [
          {
            "description": "-\"99\" == 99;",
            "isCorrect": true
          },
          {
            "description": "-\"99\" == -99.00;",
            "isCorrect": false
          },
          {
            "description": "99 == \"99.00\";",
            "isCorrect": false
          },
          {
            "description": "99 === Number(\"99\");",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next statements is false?",
        "choices": [
          {
            "description": "JavaScript defines a list of specific values that are considered \"falsy\" (e.g: 0, \"\"). Any other value not on the \"falsy\" list is automatically \"truthy\" (e.g: 99.99, \"free\")",
            "isCorrect": false
          },
          {
            "description": "You can provide an alternative if the condition is not true, called an else clause.",
            "isCorrect": false
          },
          {
            "description": "The if statement requires an expression that can be treated as either true nor false",
            "isCorrect": false
          },
          {
            "description": "The code: if true { console.log(\"this is true!\"); } is written in valid syntax and will print out the string.",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which of these next statements is NOT an example of how functions improve our code?",
        "choices": [
          {
            "description": "Each function gets its own scope, which includes a collection of variables as well as the rules for how those variables are accessed. This allows us to be in better control of our variables and prevent bugs.",
            "isCorrect": false
          },
          {
            "description": "All functions use loops (for, while, or do...while), which shorten our code significantly. ",
            "isCorrect": true
          },
          {
            "description": "Functions make our code more readable.",
            "isCorrect": false
          },
          {
            "description": "Functions allow us to split our code into reusable pieces which saves time and energy.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Fill in the blank: You need ___ to perform actions on values.",
        "choices": [
          {
            "description": "operators",
            "isCorrect": true
          },
          {
            "description": "types",
            "isCorrect": false
          },
          {
            "description": "variables",
            "isCorrect": false
          },
          {
            "description": "values",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Fill in the blank: You need ___ to store data (aka state) during the execution of your program.",
        "choices": [
          {
            "description": "loops",
            "isCorrect": false
          },
          {
            "description": "variables",
            "isCorrect": true
          },
          {
            "description": "if statements",
            "isCorrect": false
          },
          {
            "description": "functions",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following are ALL built-in types of values?",
        "choices": [
          {
            "description": "string, operator, boolean",
            "isCorrect": false
          },
          {
            "description": "object, number, null",
            "isCorrect": true
          },
          {
            "description": "boolean, scope, number",
            "isCorrect": false
          },
          {
            "description": "undefined, string literal, object",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the return value of: typeof null?",
        "choices": [
          {
            "description": "boolean",
            "isCorrect": false
          },
          {
            "description": "object",
            "isCorrect": true
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "number",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the return value of: typeof [1,2,3] === typeof {val: ''a'', val: ''b'', val: ''c''};?",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "Syntax error",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In which ways can properties be accessed in an object?",
        "choices": [
          {
            "description": "with dot notation OR bracket notation",
            "isCorrect": true
          },
          {
            "description": "by the values corresponding to the properties",
            "isCorrect": false
          },
          {
            "description": "with the object''s prototype",
            "isCorrect": false
          },
          {
            "description": "the same as in an array",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following is an array property?",
        "choices": [
          {
            "description": "values",
            "isCorrect": false
          },
          {
            "description": "count",
            "isCorrect": false
          },
          {
            "description": "limit",
            "isCorrect": false
          },
          {
            "description": "length",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What are the types of coercion (conversion from one type to another)?",
        "choices": [
          {
            "description": "natural and unnatural",
            "isCorrect": false
          },
          {
            "description": "implicit and explicit",
            "isCorrect": true
          },
          {
            "description": "normal and abnormal",
            "isCorrect": false
          },
          {
            "description": "equal and unequal",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next statements is an implicit coercion (conversion from one type to another)?",
        "choices": [
          {
            "description": "var b = Number( \"5\" );",
            "isCorrect": false
          },
          {
            "description": "var b = \"5\" * 1;",
            "isCorrect": true
          },
          {
            "description": "var b = \"Hello, world\" * 1;",
            "isCorrect": false
          },
          {
            "description": "var b = String( 5 );",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "If { var a = 42 } and { var b = \"42\" }, what will the statements { a === b } AND { a == b } return?",
        "choices": [
          {
            "description": "true/true",
            "isCorrect": false
          },
          {
            "description": "false/true",
            "isCorrect": true
          },
          {
            "description": "true/false",
            "isCorrect": false
          },
          {
            "description": "false/false",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What happens when you assign a variable that has not yet been declared?",
        "choices": [
          {
            "description": "it is automatically declared and hoisted to the top of its scope",
            "isCorrect": false
          },
          {
            "description": "it becomes available only in inner/lower scopes",
            "isCorrect": false
          },
          {
            "description": "it is automatically created in the top-level global scope",
            "isCorrect": true
          },
          {
            "description": "it makes the code easier to maintain",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In which of these cases would we probably be safe using == rather than === for comparison?",
        "choices": [
          {
            "description": "If either value (aka side) in a comparison could be the true or false value.",
            "isCorrect": false
          },
          {
            "description": "If either value in a comparison could be 0.",
            "isCorrect": false
          },
          {
            "description": "If either value in a comparison could be undefined.",
            "isCorrect": true
          },
          {
            "description": "If either value in a comparison could be an empty string \"\" or an empty array [].",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "If a === 5, which of the following is a correct use of the ternary operator and returns true?",
        "choices": [
          {
            "description": "a < 20 ? true : false",
            "isCorrect": true
          },
          {
            "description": "a < 20 : false ? true",
            "isCorrect": false
          },
          {
            "description": "a < 20 : true : false",
            "isCorrect": false
          },
          {
            "description": "a < 20 ? false : true",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next variable names is NOT a valid identifier?",
        "choices": [
          {
            "description": "var counter;",
            "isCorrect": false
          },
          {
            "description": "var _sumOf5;",
            "isCorrect": false
          },
          {
            "description": "var 5thItem;",
            "isCorrect": true
          },
          {
            "description": "var $amount;",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next statements is true about scopes?",
        "choices": [
          {
            "description": "When you declare a variable, it is only available anywhere in that scope.",
            "isCorrect": false
          },
          {
            "description": "When you declare a variable, it is available anywhere in that scope, as well as any sibling scopes.",
            "isCorrect": false
          },
          {
            "description": "When you declare a variable, it is available anywhere in that scope, as well as any upper/outer scopes.",
            "isCorrect": false
          },
          {
            "description": "When you declare a variable, it is available anywhere in that scope, as well as any lower/inner scopes.",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What will happen if you try to access a variable''s value in a scope where it''s not available?",
        "choices": [
          {
            "description": "SyntaxError",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": true
          },
          {
            "description": "InternalError",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these statements is NOT true about strict mode?",
        "choices": [
          {
            "description": "ES5 added a \"strict mode\" to the language, which is seen as keeping the code to a safer and more appropriate set of guidelines.",
            "isCorrect": false
          },
          {
            "description": "One key difference (improvement!) with strict mode is disallowing the implicit auto-global variable declaration from omitting the { var }.",
            "isCorrect": false
          },
          {
            "description": "To invoke strict mode for an entire script, put the exact statement { use strict mode } (or { use strict mode; }) before any other statements.",
            "isCorrect": false
          },
          {
            "description": "You can opt in to strict mode for an individual function, or an entire file, depending on where you put the strict mode pragma.",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which of the lines below will print \"Hello!\" to the console when executed?",
        "choices": [
          {
            "description": "(function (){ console( \"Hello!\" ); })();",
            "isCorrect": false
          },
          {
            "description": "function (){ console.log( \"Hello!\" ); }();",
            "isCorrect": false
          },
          {
            "description": "function (){ console.log( \"Hello!\" ); }",
            "isCorrect": false
          },
          {
            "description": "(function (){ console.log( \"Hello!\" ); })();",
            "isCorrect": true
          }
        ]
      }
    ]
  },
  {
    "title": "Scopes & Closures",
    "description": "What is Scope?, Lexical Scope, Function vs Block Scope, Hoisting, Scope Closures",
    "questions": [
      {
        "description": "What gives a program state?",
        "choices": [
          {
            "description": "The ability for a program to execute",
            "isCorrect": false
          },
          {
            "description": "The ability for a program to be compiled",
            "isCorrect": false
          },
          {
            "description": "The ability to store values and pull values out of variables",
            "isCorrect": true
          },
          {
            "description": "The process of creating an Abstract Syntax Tree",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In a traditional compiled-language process, what is the correct order of the three main steps a program will undergo before executing?",
        "choices": [
          {
            "description": "Tokenizing/Lexing, Parsing, Code-Generation",
            "isCorrect": true
          },
          {
            "description": "Tokenizing/Lexing, Code-Generation, Parsing",
            "isCorrect": false
          },
          {
            "description": "Parsing, Code-Generation, Tokenzing/Lexing",
            "isCorrect": false
          },
          {
            "description": "Code-Generation, Tokenzing/Lexing, Parsing",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In a traditional compiled-language process, during which phase is a string of characters broken into meaningful chunks?",
        "choices": [
          {
            "description": "Code-generation phase",
            "isCorrect": false
          },
          {
            "description": "Parsing phase",
            "isCorrect": false
          },
          {
            "description": "Execution phase",
            "isCorrect": false
          },
          {
            "description": "Tokenizing/Lexing phase",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which of the following is the responsibility of Scope?",
        "choices": [
          {
            "description": "Parsing and code-generation",
            "isCorrect": false
          },
          {
            "description": "Collecting and maintaining a look-up list of all declared variables",
            "isCorrect": true
          },
          {
            "description": "Start-to-Finish compilation and execution of the javaScript prgoram",
            "isCorrect": false
          },
          {
            "description": "Taking a stream of tokens and turning it into a tree of nested elements",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Two distinct actions are taken for a variable assignment such as { var a = 2; }",
        "choices": [
          {
            "description": "Compiler declares a variable (if not previously declared) while simultaneously Engine looks up the variable in Scope and assigns to it, if found.",
            "isCorrect": false
          },
          {
            "description": "Compiler declares a variable regardless of whether or not it was previously declared, while simultaneously Engine looks up the variable in Scope and assigns to it.",
            "isCorrect": false
          },
          {
            "description": "First, Compiler declares a variable (if not previously declared in the current scope), and second, when executing, Engine looks up the variable in Scope and assigns to it, if found.",
            "isCorrect": true
          },
          {
            "description": "First, Engine declares a variable (if not previously declared in the current scope), and second, when executing, Compiler looks up the variable in Scope and assigns to it, if found.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of these next statements is true for traversing nested Scope?",
        "choices": [
          {
            "description": "Engine starts looking for a variable at the outermost global scope.",
            "isCorrect": false
          },
          {
            "description": "Engine starts looking for a variable at the innermost global scope.",
            "isCorrect": false
          },
          {
            "description": "If the variable was not found at the currently executing Scope, Engine keeps going down one level, and so on.",
            "isCorrect": false
          },
          {
            "description": "Engine starts looking for the variable at the currently executing Scope.",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Why does it matter whether we call it LHS (Left Hand Side) or RHS (Right Hand Side)?",
        "choices": [
          {
            "description": "Because these two types of look-ups behave differently when the variable has been declared and assigned the value { undefined }.",
            "isCorrect": false
          },
          {
            "description": "Because these two types of look-ups behave differently when the variable has been declared on global Scope vs. the currently executing Scope.",
            "isCorrect": false
          },
          {
            "description": "Because these two types of look-ups behave differently when the variable has not yet been declared (is not found in any consulted Scope).",
            "isCorrect": true
          },
          {
            "description": "If an LHS look-up fails to ever find a variable, anywhere in the nested Scopes, this results in a ReferenceError being thrown by the Engine.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is Parsing?",
        "choices": [
          {
            "description": "Taking a stream of tokens and converting them into an abstract syntax tree",
            "isCorrect": true
          },
          {
            "description": "Taking a string and converting it into tokens",
            "isCorrect": false
          },
          {
            "description": "Taking a string and converting it into assembly",
            "isCorrect": false
          },
          {
            "description": "Taking an abstract syntax tree and converting it into zeroes and ones",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the responsibility of a JavaScript engine?",
        "choices": [
          {
            "description": "Find all unused code and remove it before code generation",
            "isCorrect": false
          },
          {
            "description": "Handling all the dirty work of parsing and code-generation",
            "isCorrect": false
          },
          {
            "description": "Writing JavaScript code that is missing from the file",
            "isCorrect": false
          },
          {
            "description": "Start-to-finish compilation and execution of our JavaScript program",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is the difference between an LHS lookup and an RHS lookup?",
        "choices": [
          {
            "description": "LHS looks for the existence of a variable whereas RHS looks for the history of that variable",
            "isCorrect": false
          },
          {
            "description": "LHS looks for the variable container whereas RHS looks for the value of the variable",
            "isCorrect": true
          },
          {
            "description": "LHS looks for assignment operator whereas RHS looks for the value to be assigned",
            "isCorrect": false
          },
          {
            "description": "LHS lookups search for variables whereas RHS search for values",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "How many LHS look-ups are in the code below:\n function foo(a){\n  var b = a; \n  return a + b\n}\nvar c = foo( 2 );",
        "choices": [
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": false
          },
          {
            "description": "3",
            "isCorrect": true
          },
          {
            "description": "4",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "How many LHS look-ups are in the code below:\n function foo(a){\n  var b = a; \n  return a + b\n}\nvar c = foo( 2 );",
        "choices": [
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": false
          },
          {
            "description": "3",
            "isCorrect": false
          },
          {
            "description": "4",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "If an RHS look-up fails to find a variable, what kind of error is thrown?",
        "choices": [
          {
            "description": "EvalError",
            "isCorrect": false
          },
          {
            "description": "SyntaxError",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "When is scoping determined in JavaScript?",
        "choices": [
          {
            "description": "At author-time",
            "isCorrect": true
          },
          {
            "description": "At run-time",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\n\nfunction foo(a) {\n    var b = a * 2;\n    function bar(c) {\n        console.log( a, b, c );\n    }\n    bar(b * 3);\n}\nfoo( 2 );",
        "choices": [
          {
            "description": "2 4 12",
            "isCorrect": true
          },
          {
            "description": "2 4 undefined",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": false
          },
          {
            "description": "undefined undefined undefined",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\n\nfunction foo() {\n    const a = 2\n    function bar() {\n        console.log(a);\n    }\n    bar();\n}\nconst a = 1\nfoo();",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\n\nfunction bar(b) {\n    console.log(a);\n}\nfunction foo() {\n    const a = 5\n    bar(10);\n}\nfoo();",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": true
          },
          {
            "description": "5",
            "isCorrect": false
          },
          {
            "description": "10",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console after executing the code below:\nvar a = 1\nfunction foo() {\n  var a = 2;\n\n  function bar() {\n    console.log( a );\n  }\n\n  return bar;\n}\n\nvar baz = foo();\n\nbaz();",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nfunction bar(b) {\n    function baz(a) {\n        console.log(a)\n    }\n    const a = 7\n}\nfunction foo(a) {\n    a = 5;\n    baz(a)\n}\nfoo(4);",
        "choices": [
          {
            "description": "7",
            "isCorrect": false
          },
          {
            "description": "5",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which two mechanisms in JavaScript can \"cheat\" lexical scope?",
        "choices": [
          {
            "description": "this and eval",
            "isCorrect": false
          },
          {
            "description": "this and with",
            "isCorrect": false
          },
          {
            "description": "eval and innerHTML",
            "isCorrect": false
          },
          {
            "description": "eval and with",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is going on under the hood when importing modules to prevent collisions?",
        "choices": [
          {
            "description": "They are each wrapped in an IIFE",
            "isCorrect": true
          },
          {
            "description": "They use global namespaces",
            "isCorrect": false
          },
          {
            "description": "ES6 classes",
            "isCorrect": false
          },
          {
            "description": "The code is injected and inserted as is",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is closure?",
        "choices": [
          {
            "description": "When a function is used as a callback",
            "isCorrect": false
          },
          {
            "description": "When a function is nested within another function",
            "isCorrect": false
          },
          {
            "description": "The ability of a function to access its lexical scope when that function is executing outside its lexical scope.",
            "isCorrect": true
          },
          {
            "description": "When a function returns another function, it is said to have a closure over the second function",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "JavaScript did not have a concept of block scoping before ES6",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What will be logged to the console upon execution of the code below:\n{let i = 0}\nconsole.log(i)",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": true
          },
          {
            "description": "0",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Declarations themselves are hoisted, but assignments, even assignments of function expressions, are not hoisted.",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          }
        ]
      }
    ]
  },
  {
    "title": "this @ Object Prototypes",
    "description": "this or That?, this All Makes Sense Now, Objects, Mixing (Up) \"Class\" Objects, Prototypes, Behavior Delegation",
    "questions": [
      {
        "description": "When this is used in a function, it refers to that function itself.",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Why is this helpful?",
        "choices": [
          {
            "description": "this mechanism provides an elegant way of implicitly \"passing along\" an object reference, leading to clean API design and easy re-use.",
            "isCorrect": true
          },
          {
            "description": "It is generally regarded as bad practice and should not be used",
            "isCorrect": false
          },
          {
            "description": "It allows you to do things in JavaScript that you can''t do without it",
            "isCorrect": false
          },
          {
            "description": "It helps filter out less experienced JavaScript developers",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console in the code below:\n\nfunction foo() {\n  var a = 2;\n  this.bar();\n}\n\nfunction bar() {\n  var a = 1\n  console.log( this.a );\n}\n\nfoo();",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": true
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "____ a function is called matters the most when determining the value of { this }.",
        "choices": [
          {
            "description": "WHEN",
            "isCorrect": false
          },
          {
            "description": "WHAT",
            "isCorrect": false
          },
          {
            "description": "WHY",
            "isCorrect": false
          },
          {
            "description": "HOW",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\n''use strict''\nfunction foo() {\n  var a = ''pony''\n  console.log( this.a );\n}\n\nvar a = ''rocket ship'';\n\nfoo();",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": true
          },
          {
            "description": "pony",
            "isCorrect": false
          },
          {
            "description": "rocket ship",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\n\n''use strict''\n\nfunction printName() {\n  console.log( this.name );\n}\n\nvar person = {\n  name: ''Ralphie'',\n  printName: printName\n};\n\nperson.printName();\n\nlet name = ''Joanna''",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "\"Joanna\"",
            "isCorrect": false
          },
          {
            "description": "\"Ralphie\"",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is { typeof [] } ?",
        "choices": [
          {
            "description": "\"object\"",
            "isCorrect": true
          },
          {
            "description": "SyntaxError",
            "isCorrect": false
          },
          {
            "description": "\"array\"",
            "isCorrect": false
          },
          {
            "description": "NaN",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is { typeof function () {} } ?",
        "choices": [
          {
            "description": "\"undefined\"",
            "isCorrect": false
          },
          {
            "description": "\"function\"",
            "isCorrect": true
          },
          {
            "description": "\"object\"",
            "isCorrect": false
          },
          {
            "description": "\"array\"",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Where is the value\n\n2\n\nstored in\n\nvar obj = {a: 2}\n\n?",
        "choices": [
          {
            "description": "in { obj.a }",
            "isCorrect": false
          },
          {
            "description": "in { window }",
            "isCorrect": false
          },
          {
            "description": "somewhere else that depends on the implementation",
            "isCorrect": true
          },
          {
            "description": "in { obj }",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following is true about classes in JavaScript?",
        "choices": [
          {
            "description": "It''s not possible to inherit behaviors in JavaScript because classes are an abstraction over objects.",
            "isCorrect": false
          },
          {
            "description": "In a child class, we can store copies of the parent''s behaviors if we explicitly program them in.",
            "isCorrect": true
          },
          {
            "description": "By default, when a child class inherits from a parent class, the child has a copy of the parent''s behaviors.",
            "isCorrect": false
          },
          {
            "description": "By default, changing the parent''s behaviors does not change the child''s behaviors.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the main difference between an explicit mixin and an implicit mixin?",
        "choices": [
          {
            "description": "Explicit mixins are native to JavaScript while implicit mixins are not.",
            "isCorrect": false
          },
          {
            "description": "Explicit mixin is when the properties of the parent are copied over to the child.",
            "isCorrect": true
          },
          {
            "description": "Explicit mixins are not native to Javascript while implicit mixins are.",
            "isCorrect": false
          },
          {
            "description": "Explicit mixins are recommended.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\n''use strict''\nvar anotherObject = {\n  a: 2\n};\n\nvar myObject = Object.create( anotherObject );\n\nvar a = 3;\nconsole.log(myObject.a);",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "null",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          },
          {
            "description": "3",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "A for..in loop only iterates over the specified object",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar anotherObject = {\n  a: 2\n};\n\nvar myObject = Object.create( anotherObject );\n\nmyObject.a++;\n\nconsole.log(anotherObject.a, myObject.a)",
        "choices": [
          {
            "description": "3 2",
            "isCorrect": false
          },
          {
            "description": "3 3",
            "isCorrect": true
          },
          {
            "description": "2 3",
            "isCorrect": false
          },
          {
            "description": "2 2",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nvar Dog = {\n  speak: function () {\n    console.log(\"Bark\");\n  },\n  sleep: function () {\n    console.log(''sleeping...'')\n  }\n};\n\nvar Cat = Object.create(Dog);\n\nCat.speak = function () {\n  console.log(\"Meow\")\n};\nCat.speak()\nCat.sleep()",
        "choices": [
          {
            "description": "\"Meow\" \"sleeping...\"",
            "isCorrect": true
          },
          {
            "description": "\"Meow\" ReferenceError",
            "isCorrect": false
          },
          {
            "description": "\"Bark\" \"sleeping...\"",
            "isCorrect": false
          },
          {
            "description": "undefined ReferenceError",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the main fundamental concept of Delegation-Oriented Design in comparison to the traditional Object-Oriented Design?",
        "choices": [
          {
            "description": "There is no idea of parent and child, just object linkages",
            "isCorrect": true
          },
          {
            "description": "Functions are delegated as objects",
            "isCorrect": false
          },
          {
            "description": "Delegation-Oriented Design involves explicit and implicit mixins",
            "isCorrect": false
          },
          {
            "description": "It bridges the gap with the help of ES6 classes",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In OLOO design, shadowing is a helpful tool used to make API design more robust",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "In general, with [[Prototype]] delegation involved, you want state to be on the delegators, not on the delegate",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "If you make B linked to A, and then try to link A to B, you will get an error.",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which statement below best describes why OLOO is a better mental model than OOD in JavaScript",
        "choices": [
          {
            "description": "ES6 is not supported by all browsers",
            "isCorrect": false
          },
          {
            "description": "OLOO is a cleaner design than OOD in general",
            "isCorrect": false
          },
          {
            "description": "There are no real classes in JavaScript, so true OOD is not possible. The language naturally lends itself to OLOO given its focus on objects.",
            "isCorrect": true
          },
          {
            "description": "It''s not a better mental model because OOD and OLOO are the same thing",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "When { this } is used in a function, it refers to that function''s scope.",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "{ this } is actually a binding that is made when a function is invoked",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is a call-site?",
        "choices": [
          {
            "description": "The location of the server that serves your content",
            "isCorrect": false
          },
          {
            "description": "The location of your code in memory",
            "isCorrect": false
          },
          {
            "description": "The location in code where a function is declared",
            "isCorrect": false
          },
          {
            "description": "The location in code where a function is executed",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is { String } in JavaScript?",
        "choices": [
          {
            "description": "A class for constructing strings",
            "isCorrect": false
          },
          {
            "description": "One of the 5 simple primitive types in JavaScript",
            "isCorrect": false
          },
          {
            "description": "A callable object that has many properties/methods",
            "isCorrect": true
          },
          {
            "description": "None of the above",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In objects, property names are always strings",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          }
        ]
      }
    ]
  },
  {
    "title": "Types & Grammar",
    "description": "Types, Values, Natives, Coercion, Grammar",
    "questions": [
      {
        "description": "Which is a valid JavaScript type for numerical data?",
        "choices": [
          {
            "description": "number",
            "isCorrect": true
          },
          {
            "description": "short",
            "isCorrect": false
          },
          {
            "description": "int",
            "isCorrect": false
          },
          {
            "description": "float",
            "isCorrect": false
          },
          {
            "description": "long",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the output of { console.log(typeof []) } ?",
        "choices": [
          {
            "description": "array",
            "isCorrect": false
          },
          {
            "description": "object",
            "isCorrect": true
          },
          {
            "description": "list",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nvar a = null;\nconsole.log(!a && typeof a === \"object\");",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nfunction a(b, c) {\n  var d = 5\n  return d + 1\n};\nconsole.log(a.length);",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is a good way to safely check if a variable has been declared?",
        "choices": [
          {
            "description": "if (a)...",
            "isCorrect": false
          },
          {
            "description": "if(a.isDefined())...",
            "isCorrect": false
          },
          {
            "description": "if(a !== undefined)...",
            "isCorrect": false
          },
          {
            "description": "if(typeof a !== \"undefined\")...",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Once an array is assigned data of a particular type, it can only hold data of that type.",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is the output of { console.log(typeof NaN) }?",
        "choices": [
          {
            "description": "NaN",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "\"number\"",
            "isCorrect": true
          },
          {
            "description": "null",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is { 0.1 + 0.2 === 0.3 } ?",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "JavaScript {string}s are immutable",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is { 1 / 0 } in JavaScript?",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          },
          {
            "description": "Infinity",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console after the following code is executed:\nvar a = new String( \"abc\" );\nconsole.log(typeof a)",
        "choices": [
          {
            "description": "\"string\"",
            "isCorrect": false
          },
          {
            "description": "\"object\"",
            "isCorrect": true
          },
          {
            "description": "\"function\"",
            "isCorrect": false
          },
          {
            "description": "\"class\"",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which native was added in ES6?",
        "choices": [
          {
            "description": "RegExp()",
            "isCorrect": false
          },
          {
            "description": "Symbol()",
            "isCorrect": true
          },
          {
            "description": "Error()",
            "isCorrect": false
          },
          {
            "description": "Date()",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What purpose do boxing wrappers serve?",
        "choices": [
          {
            "description": "They allow you to call methods on primitives that aren''t objects",
            "isCorrect": true
          },
          {
            "description": "They allow for the use of ES6 classes",
            "isCorrect": false
          },
          {
            "description": "They are a mechanism for JavaScript engines to improve performance",
            "isCorrect": false
          },
          {
            "description": "They give JavaScript objects all of their functionality",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is \"boxing\" and \"unboxing\"?",
        "choices": [
          {
            "description": "Boxing is converting from primitive to object wrapper, and unboxing is converting from object wrapper to primitive.",
            "isCorrect": true
          },
          {
            "description": "Boxing is merging of your JavaScript files into one, and unboxing is using source maps to undo the merging",
            "isCorrect": false
          },
          {
            "description": "Boxing is converting from object wrapper to primitive, and unboxing is converting from primitive to object wrapper.",
            "isCorrect": false
          },
          {
            "description": "Boxing is temporarily coercing one primitive type to another, unboxing is coercing it back to its original type",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "{ var a = new String( \"abc\" ); } is more performant than { var a = \"abc\"; }",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Everyone has more or less agreed that implicit coercion is a good feature in JavaScript",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar a = ''4'';\nvar b = ''2'';\nconsole.log(a + b);",
        "choices": [
          {
            "description": "42",
            "isCorrect": false
          },
          {
            "description": "\"6\"",
            "isCorrect": false
          },
          {
            "description": "6",
            "isCorrect": false
          },
          {
            "description": "\"42\"",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar a = {};\n\nif (a) {\n  console.log(a);\n}",
        "choices": [
          {
            "description": "Nothing is actually logged to the console",
            "isCorrect": false
          },
          {
            "description": "{}",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nconsole.log(40 + 0 + ''5'')",
        "choices": [
          {
            "description": "\"45\"",
            "isCorrect": false
          },
          {
            "description": "\"405\"",
            "isCorrect": true
          },
          {
            "description": "45",
            "isCorrect": false
          },
          {
            "description": "405",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar a = [5,2,6,0,9]\na.forEach(num => {\n  if (num) {\n    // ...do stuff\n  }\n  else {\n    console.log(num)\n  }\n})",
        "choices": [
          {
            "description": "5 2 6 0 9",
            "isCorrect": false
          },
          {
            "description": "0",
            "isCorrect": true
          },
          {
            "description": "Nothing is logged to the console",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What best describes the code { var a = 3 * 6; }",
        "choices": [
          {
            "description": "It is an expression containing multiple statements",
            "isCorrect": false
          },
          {
            "description": "It is a statement containing multiple expressions",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar a = 42;\nvar b = a++;\nconsole.log(a + b);",
        "choices": [
          {
            "description": "43",
            "isCorrect": false
          },
          {
            "description": "85",
            "isCorrect": true
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "84",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar obj = {\n  a: {\n    b: \"c\"\n  }\n}\nconsole.log(obj.a && obj.a.b)",
        "choices": [
          {
            "description": "\"c\"",
            "isCorrect": true
          },
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is Automatic Semicolon Insertion (ASI) in JavaScript?",
        "choices": [
          {
            "description": "A deprecated system that used to replace commas with semicolons as needed",
            "isCorrect": false
          },
          {
            "description": "ASI is an \"error correction\" routine that inserts semicolons to fix parser errors",
            "isCorrect": true
          },
          {
            "description": "Mechanism that automatically inserts semicolons in the middle of a line if it notices two statements on one line.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is logged to the console when the following code is executed:\nvar a = b = 1;\nvar c = 2;\nvar d = \"\";\nif (a === b || a === b && b === c) {\n  d += ''Expression 1 is true. '';\n}\nif ((a === b || a === b) && b === c) {\n  d += ''Expression 2 is true.'';\n}\nconsole.log(d);",
        "choices": [
          {
            "description": "\"Expression 1 is true. \"",
            "isCorrect": true
          },
          {
            "description": "\"Expression 2 is true.\"",
            "isCorrect": false
          },
          {
            "description": "\"Expression 1 is true. Expression 2 is true.\"",
            "isCorrect": false
          },
          {
            "description": "\"\"",
            "isCorrect": false
          }
        ]
      }
    ]
  },
  {
    "title": "Async & Performance",
    "description": "Asynchronous, Callbacks, Promises, Generators, Performance, Benchmarking & Tuning",
    "questions": [
      {
        "description": "console.log() is always executed synchronously",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\n\nvar data = ajax( \"https://google.com\" );\nconsole.log( data );",
        "choices": [
          {
            "description": "The html for google.com",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Until ES6, JavaScript itself has actually never had any direct notion of asynchrony built into it.",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What data structure best explains the event loop?",
        "choices": [
          {
            "description": "graph",
            "isCorrect": false
          },
          {
            "description": "binary tree",
            "isCorrect": false
          },
          {
            "description": "queue",
            "isCorrect": true
          },
          {
            "description": "stack",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What statement about { setTimeout(callbackFn, 1000) } below is the most accurate.",
        "choices": [
          {
            "description": "callbackFn will be executed in at most 1000ms.",
            "isCorrect": false
          },
          {
            "description": "callbackFn will be executed in at least 1000ms.",
            "isCorrect": true
          },
          {
            "description": "callbackFn will be executed once 1000ms has elapsed.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is \"callback hell\" all about?",
        "choices": [
          {
            "description": "Making so many ajax calls that your page takes forever to load",
            "isCorrect": false
          },
          {
            "description": "Writing many lines of code within one file",
            "isCorrect": false
          },
          {
            "description": "When you have several nested callbacks, and your code gets extremely indented",
            "isCorrect": false
          },
          {
            "description": "Manually hardcoding callbacks makes your code so convoluted that it''s hard to ever maintain or update it.",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is troubling about the code below:\nanalytics.trackPurchase( purchaseData, function(){\n  chargeCreditCard();\n  displayThankyouPage();\n} );",
        "choices": [
          {
            "description": "The functions are named poorly",
            "isCorrect": false
          },
          {
            "description": "You are using analytics to track a purchase",
            "isCorrect": false
          },
          {
            "description": "You are trusting this analytics library to ensure that critical functions get executed",
            "isCorrect": true
          },
          {
            "description": "The callback is an anonymous function",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What scenario below is not a potential problem that needs to be handled when using callbacks:",
        "choices": [
          {
            "description": "Call the callback too few or too many times",
            "isCorrect": false
          },
          {
            "description": "Call the callback too late (or never)",
            "isCorrect": false
          },
          {
            "description": "Fail to pass along any necessary environment/parameters to your callback",
            "isCorrect": false
          },
          {
            "description": "Once the callback is run, fail to execute the rest of your code",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is the difference between fn() and setTimeout(fn, 0)",
        "choices": [
          {
            "description": "The first option will be executed right away, and the second will first be added to the event loop.",
            "isCorrect": true
          },
          {
            "description": "Practically, there is no difference",
            "isCorrect": false
          },
          {
            "description": "The second option is more performant",
            "isCorrect": false
          },
          {
            "description": "When { fn } is called on the second option, it will be called with an event argument",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nvar a = 1\nsetTimeout(() => console.log(a), 0)\nfor (let i = 0; i < 1000; i++) { }\na++",
        "choices": [
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "ReferenceError",
            "isCorrect": false
          },
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "How do Promises uninvert the inversion of control?",
        "choices": [
          {
            "description": "With Promises, we can expect it to return us a capability to know when its task finishes. Then, our code can decide what to do next.",
            "isCorrect": true
          },
          {
            "description": "They break asynchrony and coerce the functions into synchronous functions",
            "isCorrect": false
          },
          {
            "description": "They require you to send two callback functions: one for success and one for error case.",
            "isCorrect": false
          },
          {
            "description": "You promise to fulfill the request by calling the callback function",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\n\nlet prom1 = new Promise((resolve, reject) => {\n  setTimeout(() => resolve(1), 1000)\n})\n\nlet prom2 = new Promise((resolve, reject) => {\n  setTimeout(() => resolve(2), 500)\n})\n\nPromise.race([prom1, prom2]).then(function onComplete(results) {\n  console.log(results)\n})",
        "choices": [
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          },
          {
            "description": "[1, 2]",
            "isCorrect": false
          },
          {
            "description": "[2, 1]",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "",
        "choices": [
          {
            "description": "",
            "isCorrect": false
          },
          {
            "description": "",
            "isCorrect": false
          },
          {
            "description": "",
            "isCorrect": false
          },
          {
            "description": "",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\n\nconst prom1 = Promise.resolve(1);\nconst prom2 = Promise.reject(''uh oh 2'');\nconst prom3 = Promise.reject(''uh oh 3'');\n\nPromise.all([prom1, prom2, prom3])\n  .then(results => console.log(results))\n  .catch(err => console.log(err));",
        "choices": [
          {
            "description": "\"uh oh 3\"",
            "isCorrect": false
          },
          {
            "description": "\"uh oh 2\" \"uh oh 3\"",
            "isCorrect": false
          },
          {
            "description": "[\"uh oh 2\", \"uh oh 3\"]",
            "isCorrect": false
          },
          {
            "description": "\"uh oh 2\"",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nvar x = 1;\n\nfunction* foo() {\n  x++;\n  yield;\n  x++;\n}\n\nvar bar = foo()\nbar.next()\nconsole.log(x)\nbar.next()\nconsole.log(x)",
        "choices": [
          {
            "description": "1 2",
            "isCorrect": false
          },
          {
            "description": "2 3",
            "isCorrect": true
          },
          {
            "description": "1 1",
            "isCorrect": false
          },
          {
            "description": "3 3",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nfunction* foo(x) {\n  var y = x * (yield \"Hello\");\n  return y;\n}\n\nvar it = foo(6);\n\nvar res = it.next();\nres = it.next(7);\n\nconsole.log(res.value);",
        "choices": [
          {
            "description": "42",
            "isCorrect": true
          },
          {
            "description": "42 \"Hello\"",
            "isCorrect": false
          },
          {
            "description": "TypeError",
            "isCorrect": false
          },
          {
            "description": "NaN",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nfunction* foo() {\n  var x = yield;\n  var y = yield x;\n  return x + y;\n}\n\nvar it1 = foo();\nvar it2 = foo();\n\nvar val1 = 3;\nvar val2 = 5;\n\nit1.next();\nit2.next();\n\nval1 = it1.next(val1).value;\nval2 = it2.next(val2).value;\n\nlet returnVal1 = it1.next(val2).value;\n\nconsole.log(returnVal1);",
        "choices": [
          {
            "description": "3",
            "isCorrect": false
          },
          {
            "description": "5",
            "isCorrect": false
          },
          {
            "description": "8",
            "isCorrect": true
          },
          {
            "description": "undefined",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nfunction* foo() {\n  let x = 1;\n  while (true) {\n    yield x;\n    x += 1;\n  }\n}\nlet sumNextVar = 0;\nfor (let nextVar of foo()) {\n  if (nextVar > 3) {\n    break;\n  }\n  sumNextVar += nextVar;\n}\nconsole.log(sumNextVar);",
        "choices": [
          {
            "description": "TypeError",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          },
          {
            "description": "6",
            "isCorrect": true
          },
          {
            "description": "1",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\nfunction foo(x, y) {\n  return new Promise((resolve, reject) => {\n    setTimeout(() => resolve(y + 1), x);\n  });\n}\n\nfunction* main() {\n  var num = yield foo(500, 1);\n  console.log(num);\n}\n\nvar it = main();\n\nvar p = it.next().value;\n\np.then(num => {\n  it.next(num);\n});",
        "choices": [
          {
            "description": "1",
            "isCorrect": false
          },
          {
            "description": "2",
            "isCorrect": true
          },
          {
            "description": "ReferenceError",
            "isCorrect": false
          },
          {
            "description": "undefined",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Why do we care about asynchrony? Why not make everything synchronous?",
        "choices": [
          {
            "description": "It would not be possible to make everything synchronous",
            "isCorrect": false
          },
          {
            "description": "That would make our code less readable",
            "isCorrect": false
          },
          {
            "description": "JavaScript is moving towards removing asynchrony",
            "isCorrect": false
          },
          {
            "description": "For performance reasons",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is a web worker?",
        "choices": [
          {
            "description": "An ES7 feature that allows functions to not have run-to-completion behavior",
            "isCorrect": false
          },
          {
            "description": "A separate instance of the JavaScript engine allowing task parallelism",
            "isCorrect": true
          },
          {
            "description": "A continuous and open connection with a server",
            "isCorrect": false
          },
          {
            "description": "It is a function that is required in order to make PWAs",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is not a common use for a web worker?",
        "choices": [
          {
            "description": "Processing intensive math calculations",
            "isCorrect": false
          },
          {
            "description": "High-traffic network communications",
            "isCorrect": false
          },
          {
            "description": "Sorting large data sets",
            "isCorrect": false
          },
          {
            "description": "DOM diffing algorithm",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "All performance optimizations matter and should be seriously evaluated",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "The code below is a valid way to test performance:\nvar start = (new Date()).getTime();\n\n// do some operation\n\nvar end = (new Date()).getTime();\n\nconsole.log( \"Duration:\", (end - start) );",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which of the following will not potentially affect your performance test?",
        "choices": [
          {
            "description": "The time of day that your tests are run",
            "isCorrect": true
          },
          {
            "description": "Running the test one time vs many times",
            "isCorrect": false
          },
          {
            "description": "The amount of battery left on a smartphone that is running the test in Chrome",
            "isCorrect": false
          },
          {
            "description": "Using polyfills",
            "isCorrect": false
          }
        ]
      }
    ]
  },
  {
    "title": "ES6 & Beyond",
    "description": "ES? Now and Future, Syntax, Organization, Async Flow Control, Collections, API Additions, Meta Programming, Beyond ES6",
    "questions": [
      {
        "description": "Transpiling is transforming your ES6+ code into equivalent code that works in ES5 environments.",
        "choices": [
          {
            "description": "True",
            "isCorrect": true
          },
          {
            "description": "False",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What are polyfills?",
        "choices": [
          {
            "description": "Objects that contain multiple functions",
            "isCorrect": false
          },
          {
            "description": "3rd party libraries you use in your code base",
            "isCorrect": false
          },
          {
            "description": "A pattern for defining equivalent behavior from a newer environment into an older environment, when possible.",
            "isCorrect": true
          },
          {
            "description": "A new feature of ES6 that provides syntactic sugar on top of functions",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "In general, new APIs cannot be polyfilled, but syntax often can be.",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed?\n\n{\n  console.log( a );\n  console.log( b );\n  var a;\n  let b;\n}",
        "choices": [
          {
            "description": "undefined/undefined",
            "isCorrect": false
          },
          {
            "description": "undefined/ReferenceError",
            "isCorrect": true
          },
          {
            "description": "ReferenceError/undefined",
            "isCorrect": false
          },
          {
            "description": "ReferenceError/ReferenceError",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following function is executed?\n\nfunction foo(x = 11, y = 31) {\n  console.log( x + y );\n}\n\nfoo(null, 6);\nfoo(undefined, 6);",
        "choices": [
          {
            "description": "6 / 17",
            "isCorrect": false
          },
          {
            "description": "17 / 17",
            "isCorrect": false
          },
          {
            "description": "NaN / NaN",
            "isCorrect": false
          },
          {
            "description": "6 / 6",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following is executed?\nlet arr = [1, 2, 3, 4];\nlet obj = {a: \"x\", b: \"y\", c: \"z\"};\nlet [,,,x,y] = arr;\nlet {a, d} = obj;\n\nconsole.log(x, y);\nconsole.log(a, d);",
        "choices": [
          {
            "description": "3 4 / x y",
            "isCorrect": false
          },
          {
            "description": "undefined undefined / x undefined",
            "isCorrect": false
          },
          {
            "description": "4 undefined / x undefined",
            "isCorrect": true
          },
          {
            "description": "4 null / x z",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following is not true of ES6 modules?",
        "choices": [
          {
            "description": "ES6 modules are still experimental and should not be used",
            "isCorrect": true
          },
          {
            "description": "Once you define statically what all the top-level exports are on your module''s public API, those cannot be amended later.",
            "isCorrect": false
          },
          {
            "description": "You cannot have multiple modules in a file",
            "isCorrect": false
          },
          {
            "description": "There is only one instance of the module, which maintains its state. Every time you import that module into another module, you get a reference to the one centralized instance.",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Constructors are required for both classes and subclasses",
        "choices": [
          {
            "description": "true",
            "isCorrect": false
          },
          {
            "description": "false",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "In a constructor of a subclass, you cannot access { this } until { super(..) } has been called.",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What are the two possible outcomes of a { Promise } ?",
        "choices": [
          {
            "description": "Fulfilled and rejected",
            "isCorrect": true
          },
          {
            "description": "Completed and in progress",
            "isCorrect": false
          },
          {
            "description": "Returned and incomplete",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What are thenables?",
        "choices": [
          {
            "description": "Promises that are used with generators",
            "isCorrect": false
          },
          {
            "description": "The next version of promises introduced in ES7",
            "isCorrect": false
          },
          {
            "description": "Promise-like objects that generally can interoperate with Promise mechanisms",
            "isCorrect": true
          },
          {
            "description": "Just another word for Promises",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following is executed?\n\nconst a = 42, b = Promise.resolve(43), c = 44;\nPromise.all([a, b, c]).then(val => console.log(val));",
        "choices": [
          {
            "description": "43",
            "isCorrect": false
          },
          {
            "description": "[42, 43, 44]",
            "isCorrect": true
          },
          {
            "description": "42",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "const a = Promise.resolve(43), b = 42, c = Promise.reject(\"Oops\");\nPromise.race([a, b, c])\n.then(val => console.log(val))\n.catch(e => console.log(e));",
        "choices": [
          {
            "description": "42",
            "isCorrect": false
          },
          {
            "description": "43",
            "isCorrect": false
          },
          {
            "description": "\"Oops\"",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What do typed arrays allow you to do in JavaScript?",
        "choices": [
          {
            "description": "Provide structured access to binary data using array-like semantics",
            "isCorrect": true
          },
          {
            "description": "Create arrays of a specific type of values, like an array of only strings",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What is the difference between maps and objects?",
        "choices": [
          {
            "description": "Objects are the JavaScript version of maps",
            "isCorrect": false
          },
          {
            "description": "Object keys have to be strings, and map keys can be any value",
            "isCorrect": true
          },
          {
            "description": "There is no difference",
            "isCorrect": false
          },
          {
            "description": "Maps are immutable, and objects are not",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "The following code is valid ES6:\n\nvar m = new Map();\n\nvar x = { id: 1 },\n  y = { id: 2 };\n\nm[x] = y;",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "Which of the following statements about WeakMaps is not true:",
        "choices": [
          {
            "description": "If an object used as a key in a WeakMap is garbage collected, the entry is not removed",
            "isCorrect": true
          },
          {
            "description": "WeakMaps do not expose any iterators over their keys, values, or entries",
            "isCorrect": false
          },
          {
            "description": "WeakMaps do not have a { size } property or { clear() } method",
            "isCorrect": false
          },
          {
            "description": "WeakMaps take only objects as keys",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following statements about Sets is not true:",
        "choices": [
          {
            "description": "A set is a collection of unique values (duplicates are ignored)",
            "isCorrect": false
          },
          {
            "description": "The add() method is used to add new items to a set",
            "isCorrect": false
          },
          {
            "description": "The get() method is used to retrieve an item from a set",
            "isCorrect": true
          },
          {
            "description": "The has() method is used to test if a value is present or not",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Which of the following statements about WeakSets is true:",
        "choices": [
          {
            "description": "A WeakSet holds its keys weakly",
            "isCorrect": false
          },
          {
            "description": "A WeakSet holds its values weakly",
            "isCorrect": true
          },
          {
            "description": "WeakSet values can be primitives like strings or numbers",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed?",
        "choices": [
          {
            "description": "true",
            "isCorrect": true
          },
          {
            "description": "false",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Why would you use Number.isNaN() instead of isNaN()?",
        "choices": [
          {
            "description": "If you want to determine if a value is not of type number, including NaN",
            "isCorrect": false
          },
          {
            "description": "If you are literally checking for the value NaN",
            "isCorrect": true
          },
          {
            "description": "If you want to use the faster, ES6 version",
            "isCorrect": false
          },
          {
            "description": "If you want to determine if a value is not of type number, so that does not include NaN",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "What will be logged to the console when the following code is executed:\n\nvar foo = [1, \"2\", 2, 4, \"2\"];\nvar newFoo = foo.find((val) => {\n  return val == 2\n})\nconsole.log(newFoo + 1)",
        "choices": [
          {
            "description": "\"2,2,21\"",
            "isCorrect": false
          },
          {
            "description": "3",
            "isCorrect": false
          },
          {
            "description": "\"21\"",
            "isCorrect": true
          },
          {
            "description": "NaN",
            "isCorrect": false
          }
        ]
      },
      {
        "description": "Tail Call Optimization helps us save memory when we do object oriented programming",
        "choices": [
          {
            "description": "True",
            "isCorrect": false
          },
          {
            "description": "False",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What do async functions return?",
        "choices": [
          {
            "description": "a callback",
            "isCorrect": false
          },
          {
            "description": "an object",
            "isCorrect": false
          },
          {
            "description": "a resolved promise",
            "isCorrect": false
          },
          {
            "description": "a promise",
            "isCorrect": true
          }
        ]
      },
      {
        "description": "What is WebAssembly?",
        "choices": [
          {
            "description": "A new JavaScript framework",
            "isCorrect": false
          },
          {
            "description": "A new binary representation of code",
            "isCorrect": true
          },
          {
            "description": "The future replacement of JavaScript",
            "isCorrect": false
          },
          {
            "description": "A new programming language",
            "isCorrect": false
          }
        ]
      }
    ]
  }
]';

BEGIN TRANSACTION;

DECLARE @QuestionInput TABLE([quizId] INT, [questions] NVARCHAR(MAX));

MERGE dbo.Quiz
USING (
    SELECT [title], [description], [questions]
    FROM OPENJSON(@json, '$')
    WITH (
		[title] VARCHAR(MAX),
		[description] VARCHAR(MAX),
        [questions] NVARCHAR(MAX) AS JSON
    )
) AS Q
ON 1 = 0    -- Always INSERT
WHEN NOT MATCHED THEN 
    INSERT([title], [description])
    VALUES (Q.[title], Q.[description])
    OUTPUT inserted.Id, Q.[questions]
    INTO @QuestionInput([quizId], [questions]);

DECLARE @ChoiceInput TABLE([questionId] INT, [choices] NVARCHAR(MAX));

MERGE dbo.Question
USING (
	SELECT [quizId], [description], [choices]
	FROM @QuestionInput CROSS APPLY (
		SELECT [description], [choices] 
		FROM OPENJSON([questions])
		WITH (
			[description] VARCHAR(MAX),
			choices NVARCHAR(MAX) AS JSON
		)
	) AS A
) AS Q
ON 1 = 0    -- Always INSERT
WHEN NOT MATCHED THEN 
    INSERT([quizId], [description])
    VALUES (Q.[quizId], Q.[description])
    OUTPUT inserted.Id, Q.[choices]
    INTO @ChoiceInput([questionId], [choices]);

INSERT dbo.Choice([QuestionId], [Description], [IsCorrect])
SELECT [questionId], Q.[Description], Q.[IsCorrect]
FROM @ChoiceInput CROSS APPLY (
    SELECT [description], [isCorrect]
    FROM OPENJSON([choices])
    WITH (
        [description] VARCHAR(MAX),
        [isCorrect] VARCHAR(MAX)
    )
) AS Q;

COMMIT;

SELECT * FROM dbo.Quiz;
SELECT * FROM dbo.Question;
SELECT * FROM dbo.Choice;