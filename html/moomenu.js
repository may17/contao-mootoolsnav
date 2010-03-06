var moomenu_timer;

function moomenu_close()
{
    moomenu.accordion.display(activemenuaccord);
}

function moomenu_fire()
{
    moomenu_timer = window.setTimeout(moomenu_close, 1500);
}

function moomenu_stop()
{
    window.clearTimeout(moomenu_timer);
}

function moomenu_display(accordionitem)
{
    moomenu_stop();
    moomenu.accordion.display(accordionitem);
}