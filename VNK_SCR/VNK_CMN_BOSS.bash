################################################################################
################################################################################
##                                                                            ##
##                  [ V N K - V I N A  K N O W L E D G E ]                    ##
##                                                                            ##
##                   SITE  : https://www.vinaknowledge.com                    ##
##                   EMAIL : hvloi@vinaknowledge.com                          ##
##                                                                            ##
##                       TAN BINH DST, HCMC, VIET NAM                         ##
##                                                                            ##
##                      Copyright © 2019 Vina Knowledge                       ##
##                                                                            ##
################################################################################
################################################################################

#!/bin/bash

##
# Shell script should be added the extension .bash, to let IDE recognize the
# format of the file.
##

##
# V N K  -  C O M M O N  B O S S  S C R I P T  <<  S U P P E R  S C R I P T
##

##------------------------------------------------------------------------------
# D E F I N I T I O N S
##

# Define VNK_NULL #
VNK_NULL=""

# Self-defined return status #
CMN_RETURN_OK=0
CMN_RETURN_KO=1

# Self-defined exit status #
CMN_EXIT_OK=0
CMN_EXIT_KO=1

# Root directory of the project #
ROOT_DIR_NAME="vinaknowledge_cmn"
ROOT_DIR_PATH=$VNK_NULL

# Supper command to check other commands #
S_COMMAND="command"

# Return string in a function for the use in the case str=func(return str) #
RETURN_STR="echo"

# Black Hooooole #
VNK_BH="/dev/null"

# Needed tools #
PWD=$VNK_NULL
SED=$VNK_NULL

##------------------------------------------------------------------------------
# F U N C T I O N S
##

##
# Function: VNK_CheckAvailableTool
# Scope   : Global
# Input   : String, tool name
# Ouptut  : String, path to tool
# Using   : ToolPath="$(VNK_CheckAvailableTool <ToolName>)"
# Notice  : - This function is only used in this script, make an other one for
#           othe uses.
#           - ToolPath can be the absolute path to the tool or the name of the
#           tool if the tool is a built-in tool of the Shell.
#           - DO NOT "echo" to stdout because it will be assign to the variable.
##
VNK_CheckAvailableTool()
{
    # Get name of tool from input #
    local ToolName=$1

    # Check if the tool is available #
    local ToolPath="$($S_COMMAND -v $ToolName)"
    if [ -z "$ToolPath" ]
    then
        # Return a null string #
        $RETURN_STR $VNK_NULL

        # Show error notification in stderr #
        echo -e "[ERRO]: \"$ToolName\" is not found, exit!" >&2

        # Return the status of the function #
        return $CMN_RETURN_KO
    fi

    $RETURN_STR $ToolPath
    return $CMN_RETURN_OK
}

##------------------------------------------------------------------------------
# M A I N  C O D E
##

# Check the S_COMMAND, do not want to show default error #
$S_COMMAND 2> $VNK_BH
Status=$?
if [ "$Status" -ne "0" ]
then
    echo -e "[ERRO]: \"$S_COMMAND\" is needed but not found, exit!"
    exit $CMN_EXIT_KO
fi

# Checking PWD #
echo -e "[INFO]: Checking PWD,..."
PWD="$(VNK_CheckAvailableTool pwd)"
echo -e "[INFO]: Cheking done! Using \"$PWD\"!"
echo

# Checking SED #
echo -e "[INFO]: Checking SED,..."
SED="$(VNK_CheckAvailableTool sed)"
echo -e "[INFO]: Cheking done! Using \"$SED\"!"
echo

# Exit with non-error status
exit $CMN_EXIT_OK

##
# E N D
##------------------------------------------------------------------------------
