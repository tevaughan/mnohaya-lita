# mnohaya-lita

## Megan Vaughan's arrangement of a traditional song in the Vaughan family.

I coded up the initial Lilypond for this on the basis of
 1. Megan's original score and
 2. my mental notes from our first practice session.

See [the release page](https://github.com/tevaughan/mnohaya-lita/releases) for
PDF and MIDI files.

## Playing MIDI on GNU/Linux

To play a MIDI file on GNU/Linux, make sure that the `timidity` and `pmidi`
packages are installed.

Typing `pmidi -l` will produce output that looks something like this:

    shell-prompt$ pmidi -l
     Port     Client name                       Port name
     14:0     Midi Through                      Midi Through Port-0
    128:0     TiMidity                          TiMidity port 0
    128:1     TiMidity                          TiMidity port 1
    128:2     TiMidity                          TiMidity port 2
    128:3     TiMidity                          TiMidity port 3

By `shell-prompt$` I mean whatever shell prompt you see when you are about to
type a command in a terminal window.  At the shell prompt, first change to the
directory that contains `mnohaya-lita.midi`. Then do something like

    shell-prompt$ pmidi -p 128:0 mnohaya-lita.midi

where you substitute a port number that you see in your output from `pmidi -l`.

## Building New Output Files

There is a `Makefile`.  On a unix-like machine with Lilypond installed, just
open a terminal window, change to the directory containing the local clone of
the git repository, and then do

    shell-prompt$ make

This should generate both a PDF version of the score and a MIDI file.

Modify `mnohaya-lita.ly` to change the output.  See the Lilypond documentation,
if necessary, for reference.

