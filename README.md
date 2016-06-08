
# PDF and MIDI Files

See [the release page](https://github.com/tevaughan/mnohaya-lita/releases).


# Background of Megan Vaughan's Arrangement

When he was a boy, my father's family had Ukrainian Catholic friends.  From
them he and his siblings learned a traditional Ukrainian song, Mnohaya Lita.
Literally, it means "Many Years".  The song is sung, for example, to the bride
and groom at a wedding.  It is also part of the divine liturgy in the East.
(The Eastern Catholics do not celebrate the mass, which is the Roman-Catholic
version of the same divine liturgy. Both the Eastern divine liturgy and the
Roman mass have the liturgy of the Word and the liturgy of the Eucharist.)

There are various versions of the music for Mnohaya Lita. However, none of the
versions that one finds on the internet is the one that my father learned as a
child.  My daughter, Megan, listened to a recording of my father and some of
his siblings, who sang the song as they learned it when they were children.
From this recording, she made an arrangement that drew upon her part-writing
training as a music major in college.

I wrote the initial Lilypond source code for this on the basis of
 1. Megan's original score and
 2. my mental notes from our first practice session.


# Playing MIDI on GNU/Linux

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


# Building New Output Files

There is a `Makefile`.  On a unix-like machine with Lilypond installed, just
open a terminal window, change to the directory containing the local clone of
the git repository, and then do

    shell-prompt$ make

This should generate both a PDF version of the score and a MIDI file.

Modify `mnohaya-lita.ly` to change the output.  See the Lilypond documentation,
if necessary, for reference.

