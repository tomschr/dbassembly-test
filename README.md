# DocBook Assemblies

This little repository is just a proof of concept. It should
serve as an example of an _Installation and Setup Quick Start Guide_.

# (To build or) not to build

1. Install the `docbook_5` package from https://build.opensuse.org/package/show/Publishing/docbook_5.

1. Clone the DAPS repo: `git clone https://github.com/openSUSE/daps`
   Don't change directories now!

1. Switch to the right DAPS branch: `git -C daps switch docbook_assemblies`

1. Create an alias (ddaps = development DAPS) to run DAPS from the repo: `alias ddaps="$PWD"'/daps/bin/daps --dapsroot '"$PWD"'/data/gits/daps/'`

1. Clone this repo: `git clone https://github.com/.../dbassembly-test`

1. Go there: `cd dbassembly-test`

1. Run ddaps: `ddaps -d DC-assembly validate`


# Terminology

* **Assembly**: an XML structure that contains resources to other files, defines modules and relationships, and combine all this information into a structure.
* **Realized Structure**: The structure you get after processing your assembly file.
* **Topic**: Single unit of information, usually as a part of a greater organizational structure.

# Content

This repo contains the following files and directories:

* `topics/`

   Contain all topic related XML files (usually with the root element `<topic>`.

* `topics/Installation_and_Setup_QuickStart_Guide.xml`

  This is the _assembly file_. It contains references to other files, usually topics and forms the documentation structure.

* `topics/topic*.xml`

   Are "modules" or files that are units of specific information.


# More information

* https://tdg.docbook.org/tdg/5.1/ch06.html
