#!/bin/bash
export KDEWM=/usr/bin/i3
systemctl --user mask plasma-kwin_x11.service
/usr/bin/startplasma-x11 &
/usr/bin/i3 &
if [[ "$(ps x | grep -e /usr/bin/plasmashell | wc -l  )" -lt 2   ]] ; then
    /usr/bin/plasmashell &
fi

wait $(pidof startplasma-x11)
i3-msg exit
kill $(pidof plasmashell)

systemctl --user unmask plasma-kwin_x11.service
