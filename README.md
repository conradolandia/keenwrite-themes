![Total Downloads](https://img.shields.io/github/downloads/DaveJarvis/keenwrite-themes/total?color=blue&label=Total%20Downloads&style=flat) ![Release Downloads](https://img.shields.io/github/downloads/DaveJarvis/keenwrite-themes/latest/total?color=purple&label=Release%20Downloads&style=flat) ![Release Date](https://img.shields.io/github/release-date/DaveJarvis/keenwrite-themes?color=red&style=flat&label=Release%20Date) ![Release Version](https://img.shields.io/github/v/release/DaveJarvis/keenwrite-themes?style=flat&label=Release)

# Themes

Document typesetting configurations that contain a variety of styles for
changing the look and feel of documents.

# Creation

All themes must conform to the following structure:

* A separate directory
* A main entry point
* A reference to XHTML setups
* A properties file

For example, a new theme named "dīvus" would have the following file
structure, relative to the directory containing this README file:

    dīvus/
    ├── main.tex
    ├── xhtml.tex
    └── theme.properties

The remainder of this section describes the structure in more detail.

## Theme directory

For consistency, the theme directory name:

* must not include spaces;
* must be created at the same directory level as all other themes;
* should be lowercase; and
* should be a single word (Latin works well).

## Entry point

The theme's main entry point, `main.tex`, is passed to the typesetting
software by the editor immediately prior to typesetting. The purpose of
the entry point is to import all the other files that define how the
document is to be presented.

Minimally, the file must include the XHTML setups file, which may be
accomplished with the following line:

    \input xhtml

## XHTML setups

To typeset the document, the editor first converts the content into a
data format known as XHTML. Using XHTML allows mapping common document
elements to commands that the typesetting software can execute to format
the output document.

A file named `xhtml.tex` must exist alongside the main file (that is,
in the same directory). The file must contain the following:

    \usesubpath[../xhtml]
    \input ../xhtml/setups

These commands instruct the typesetter to import instructions from the
`xhtml` directory, which must exist in the parent directory.

(Aside, those two commands also demonstrate the syntax for how to import
files from another theme.)

## Properties file

Every theme must include a `theme.properties` file. This file allows the
editor to uniquely identify each theme and display a user-friendly
name. The format of the file follows:

    name=Theme Name

The `name` is the key that the editor uses and the `Theme Name` is the
value that the author of the theme may assign. For the dīvus example,
the file would resemble:

    name=Dīvus

For consistency, the theme name:

* should use title case (each word starts with an uppercase letter);
* should be short (will be truncated to 20 characters);
* must be uniquely named; and
* must not contain punctuation (letters and numbers only).

If a theme does not contain this file name, the theme will be unavailable
for users to select when exporting.

