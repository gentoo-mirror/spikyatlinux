#
# Copyright 2016-2019 SpikyAtLinux
#
# +-+-+-+-+-+-+ +-+-+-+-+-+-+
# |G|e|n|t|o|o| |6|4|-|B|i|t|
# +-+-+-+-+-+-+ +-+-+-+-+-+-+
#
# Unofficial repository
#
Here are some of my own or modified ebuilds.
Also some of them I´ve found in the web, or
in other overlays ;-)

Use all of them at your own risk. I´ve tested all
on my local system, if you find some errors or
outdated ebuilds let me know ;-)

Perhaps you can star me if you find something
useful ;-)

#################################################

To use my ebuilds download spikyatlinunx.conf
in your /etc/portage/repos.conf directory
and run "emaint sync -r spikyatlinux",
without quotes of course.

#################################################

# Oneliner to use my repo without layman

wget https://raw.githubusercontent.com/spikyatlinux/ebuilds_for_gentoo/master/spikyatlinux.conf -O /etc/portage/repos.conf/spikyatlinux.conf && emaint sync -r spikyatlinux && eix-update

# ebuilds_for_gentoo


# Add repository with layman
#################################################

1st install layman:

    # emerge -av layman

2nd Sync layman:

    # sudo layman -S

3rd Add my repository:

    # sudo layman -f -a spikyatlinux

4th Perhaps you have to sync your local db:
    
    # sudo emaint sync -r spikyatlinux

or if you have eix installed

    # sudo eix-update
    
# ;-)
