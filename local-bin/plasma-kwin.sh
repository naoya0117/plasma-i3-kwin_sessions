#!/bin/bash
systemctl --user unmask plasma-kwin_x11.service
/usr/bin/startplasma-x11 &
if [[ "$(ps x | grep -e /usr/bin/plasmashell | wc -l  )" -lt 2   ]] ; then
    /usr/bin/plasmashell &
fi

wait $(pidof startplasma-x11)
kill  $(pidof plasmashell)
