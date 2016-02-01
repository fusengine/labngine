#!/bin/sh

# update debian, clean Upgrade debian
UPDATE="apt-get update"
INSTALL="apt-get install -yqq"
UPGRADE="apt-get upgrade -y"
DIST_UPGRADE="apt-get dist-upgrade -y"
CLEANUP="apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && apt-get purge -y"

# MESSAGE
MESSAGE=" ==> Install package"
UPDATE_MESSAGE=" ==>  Update"
UPGRADE_MESSAGE=" ==> Upgrade"
CLEAN_MESSAGE=" ==> start Clean debian"

# End Message
END_UPDATE_MESSAGE=" Update Done !"
END_UPGRADE_MESSAGE="Upgrade Done !"
END_MESSAGE="Install package Done !"
END_CLEAN="Clean Done !"


# Ubuntu style
style_debian(){
  echo ""
  echo ""
}


# update UBUNTU
update(){
  style_debian
  echo $UPDATE_MESSAGE
  style_debian

  $UPDATE

  style_debian
  echo $END_UPDATE_MESSAGE
}

# Clean ubuntu
clean_debian(){
  style_debian
  echo $CLEAN_MESSAGE
  style_debian

  if [[ $CLEANUP ]]; then
    echo "Waithing clean up for debian "
    $CLEANUP
    echo $END_CLEAN
  else
    echo " debian not require clean up commande"
  fi
  style_debian
}

# Upgrade
upgrade(){
  echo $UPGRADE_MESSAGE
  style_debian

  $UPGRADE
  $DIST_UPGRADE

  style_debian
  echo $END_UPGRADE_MESSAGE
}

# install packages
install_packages(){
  style_debian
  if [[ -e $PACKAGES_ENV_DOCKERFILES  ]]; then
    echo "Install Packages in Env Dockerfile detected $PACKAGES_ENV_DOCKERFILES"

    echo " >>>>>>>>> Install Waithing"
    style_debian
    $INSTALL $PACKAGES_ENV_DOCKERFILES

    echo " ==> Install Done to Env Dockerfile"
    style_debian
  elif [[ $PACKAGES_DEFAULT ]]; then

    echo $MESSAGE
    style_debian
    $INSTALL $PACKAGES_DEFAULT

    echo $END_MESSAGE
    style_debian
  else
    style_debian
    echo "Packages is not Installed if you want install package use ENV PACKAGES_ENV_DOCKERFILES"
    style_debian
  fi

  style_debian
}
