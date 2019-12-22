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
# V N K  -  C O M M O N  B U I L D  F U N C T I O N S  N O T  F U N N Y
##

##------------------------------------------------------------------------------
# A D D  O U T  S I D E  S O U R C E
##


##------------------------------------------------------------------------------
# D E F I N I T I O N S
##

# Import some source script #
source $WORKSPACE/VNK_SCR/VNK_Definition/VNK_CMN_Definition.bash

##------------------------------------------------------------------------------
# F U N C T I O N S
##

##
# Function: VNK_CheckNumArg
# Scope   : Local
# Input   : 
# Ouptut  :
# Using   : VNK_CheckNumArg <Min> <Max> <$#> <FuncName>
# Notice  :
##
VNK_CheckNumArg()
{
    # $1: minimum number of required arguments
    Min=$1
    # $2: maximum number of required arguments
    Max=$2
    # $3: number of input arguments
    Input=$3
    # $4: the name of being checked function
    FuncName=$4

    if [ $3 -gt $Max ]
    then
        echo "$FuncName() too many arguments!"
        return $RETURN_KO
    elif [ $3 -lt $Min ]
    then
        echo "$FuncName() too few argument!"
        return $RETURN_KO
    fi

    return $RETURN_OK
}

##
# Function: VNK_Notify_INFO
# Scope   : Global
# Input   : Information message
# Ouptut  : Return code
# Using   : VNK_Notify_INFO <"INFO Message">
# Notice  :
##
VNK_Notify_INFO()
{
    VNK_CheckNumArg 1 1 $# "$FUNCNAME"
    local RetCode=$?
    if [ $RetCode -eq $RETURN_KO ]
    then
        # Error, return! #
        return $RETURN_KO
    fi

    # Show message here #
    echo "[INFO]: $1"

    return $RETURN_OK
}
# Export for using in other script #
export VNK_Notify_INFO

##
# Function: VNK_Notify_ERRO
# Scope   : Global
# Input   : Error message
# Ouptut  : Return code
# Using   : VNK_Notify_ERRO <"ERRO Message">
# Notice  :
##
VNK_Notify_ERRO()
{
    VNK_CheckNumArg 1 1 $# "$FUNCNAME"
    local RetCode=$?
    if [ $RetCode -eq $RETURN_KO ]
    then
        # Error, return! #
        return $RETURN_KO
    fi

    # Show message here #
    echo "[ERRO]: $1"

    return $RETURN_OK
}
# Export for using in other script #
export VNK_Notify_ERRO

##
# Function: VNK_Notify_NOTI
# Scope   : Global
# Input   : Notice message
# Ouptut  : Return code
# Using   : VNK_Notify_NOTI <"NOTI Message">
# Notice  :
##
VNK_Notify_NOTI()
{
    VNK_CheckNumArg 1 1 $# "$FUNCNAME"
    local RetCode=$?
    if [ $RetCode -eq $RETURN_KO ]
    then
        # Error, return! #
        return $RETURN_KO
    fi

    # Show message here #
    echo "[NOTI]: $1"

    return $RETURN_OK
}
# Export for using in other script #
export VNK_Notify_NOTI

##------------------------------------------------------------------------------
# M A I N  C O D E
##

##
# E N D
##------------------------------------------------------------------------------
