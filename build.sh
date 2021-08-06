#!/bin/bash

ASSEMBLY_XSL="/usr/share/xml/docbook/stylesheet/nwalsh5/current/assembly/assemble.xsl"
ASSEMBLY_FILE="topics/Main.xml"
REALIZED_XML="xml/Main.xml"

echo "Building the realized structure: $REALIZED_XML"
xsltproc --output $REALIZED_XML --stringparam docbook.version "5.2" \
  $ASSEMBLY_XSL $ASSEMBLY_FILE

echo "Validating it through daps..."
daps -m $REALIZED_XML validate

echo "Building HTML..."
daps -m $REALIZED_XML html