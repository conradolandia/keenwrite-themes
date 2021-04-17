# Overview

Typesetting an XHTML document first requires converting the source document
from XHTML into instructions that ConTeXt can execute. The second step
involves applying presentation styles to those instructions using _setups_.
Files in this directory accomplish the first step.

The next sections provide a brief introduction to XHTML, XML, and the
role ConTeXt plays. Readers should be familiar with HTML.

## Extensible HyperText Markup Language

The Extensible HyperText Markup Language (XHTML) extends HTML to create
a document structure that is easily read by computer programs. A minimal
XHTML document resembles:

    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE html 
         PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
      <head>
        <title>Document title</title>
      </head>
      <body>
        <p>This is a document paragraph.</p>
      </body>
    </html>

Text enclosed within angle bracks (`<>`) is called an _element_. Text that
includes an equals sign (`=`) is called an attribute, having a name part
(on the left) and a value part (on the right). Thus `<html lang="en">`
is an `html` element having an attribute named `lang` and a value of `en`.

## Extensible Markup Language

Extensible Markup Language (XML) is a text format derived from predecessors
developed for large-scale electronic publishing. An XML document is
considered _well-formed_ if it satisfies certain rules, specified by the
World Wide Web Consortium (W3C). XHTML relates to XML in that all XHTML
documents are _well-formed_ XML documents.

# Typesetting

By adhering to a standard, XHTML and XML documents can be typeset using
ConTeXt. Moreover, XHTML elements and attributes belong to a known set,
which makes it possible to map XML elements to typesetting instructions
that will handle any XHTML document.

# Mapping

The `setups.tex` file defines matching instructions that map XHTML elements
to XML setups. The XML setups are defined in separate files that are included
separately to make editing simpler.

The `xml-*.tex` files define how each matched XHTML instruction is translated
into a ConTeXt command. These particular ConTeXt commands define the
overall document structure. The commands are meant to be as broadly
applicable and general-purpose as possible. Instructions for styling the
commands are found in theme-specific directories.

