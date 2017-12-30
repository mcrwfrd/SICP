## Dr Racket

Somewhere around Chapter 2 of the book, I got tired of flipping back and forth between emacs, mit-scheme repl in the terminal, and repl.it. So I decided to download Dr. Racket instead and work with the sicp packages available within Racket.

Ubuntu already comes with a version of Racket installed. But just to make sure we're all up to date:

1. Add the Racket ppa:

```sudo add-apt-repository ppa:plt/racket```

2. Update and install Racket:

```sudo apt update && sudo apt install racket```

For details on the SICP collection within Racket, see https://docs.racket-lang.org/sicp-manual/


## Getting Scheme Running Locally

- install the MIT Scheme interpreter from the MIT website
- once installed, enter the REPL to test out code snippets by typing ```mit-scheme```
- I decided I wanted to write scheme outside of the recommended Edwin or Emacs, so I wanted to know how to load definitions from a text file and then just use Atom to edit my code
- to do this, enter the mit-scheme REPL and type ```(load "example.scm")``` to load in your definitions
- note that ```example.scm``` needs to be in your current working directory
- now any procedures you've defined in

## Running Scheme on the Net

- I use repl.it as my scratch pad for testing small snippets of Scheme code
