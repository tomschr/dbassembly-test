# DocBook Assemblies

This little repository is just a proof of concept. It should
serve as an example of an _Installation and Setup Guide_.


# Terminology

* **Assembly**: an XML structure that contains resources to other files, defines modules and relationships, and combine all this information into a structure.
* **Realized Structure**: The structure you get after processing your assembly file.
* **Topic**: Single unit of information, usually as a part of a greater organizational structure.

# Content
This repo contains the following files and directories:

* `topics/`

   Contain all topic related XML files (usually with the root element `<topic>`.

* `topics/InstallationGuide.aby`

  This is the _assembly file_. It contains references to other files, usually topics and forms the documentation.

* `topics/topic*.xml`

   Are "modules" or files that are units of specific information.

* `xml/`

   Contains the realized XML file from the assembly process processed by `daps`.


# Building the Documentation

The process is split into two parts:

1. Create the realized file from the assembly file.

   This step is a transformation process with the DocBook Assembly XSLT stylesheet (`assembly.xsl`). This produces a document that is stored under the `xml/` directory.

2. Build the target format with `daps`.

   When the first step was successful, the file in the `xml/` directory can be processed with `daps`.


# For More Information

* https://tdg.docbook.org/tdg/5.1/ch06.html