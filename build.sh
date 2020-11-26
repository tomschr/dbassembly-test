#!/bin/bash

ASSEMBLY_XSL="/usr/share/xml/docbook/stylesheet/nwalsh5/current/assembly/assemble.xsl"
ASSEMBLY_FILE="topics/Installation_and_Setup_QuickStart_Guide.xml"
REALIZED_XML="xml/InstallationGuide.xml"

echo "Building the realized structure: $REALIZED_XML"
xsltproc --output $REALIZED_XML $ASSEMBLY_XSL $ASSEMBLY_FILE

echo "Validating it through daps..."
daps -m $REALIZED_XML validate

echo "Building HTML..."
daps -m $REALIZED_XML html