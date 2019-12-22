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
# V N K  -  C O M M O N  E N V I R O N M E N T
##

##------------------------------------------------------------------------------
# A D D  O U T  S I D E  S O U R C E
##

# Going to import VNK_CMN_BOSS.bash but do it later #

##------------------------------------------------------------------------------
# D E F I N I T I O N S
##

# Hard specify workspace #
WORKSPACE=".."

# Specifying temporary script directory #
VNK_SCR_DIR="VNK_SCR"
VNK_SCR_DIR_PATH="$WORKSPACE/$VNK_SCR_DIR"

VNK_SUPPER_SCR="VNK_CMN_BOSS.bash"
VNK_SUPPER_SCR_PATH="$VNK_SCR_DIR_PATH/$VNK_SUPPER_SCR"

# Now we can safely "import" BOSS script #
source $VNK_SUPPER_SCR_PATH "Y"

# Re-define WORKSPACE #
export WORKSPACE="$ROOT_DIR_PATH"

# Import Notifying functions #
source $WORKSPACE/VNK_SCR/VNK_Notification/VNK_CMN_Notification.bash

IAm=$BASH_SOURCE

##------------------------------------------------------------------------------
# F U N C T I O N S
##

##------------------------------------------------------------------------------
# M A I N  C O D E
##

VNK_Notify_INFO "Calling $IAm,..."

##
# E N D
##------------------------------------------------------------------------------
