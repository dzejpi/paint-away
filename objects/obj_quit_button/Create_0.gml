/// @description Set the proper button name
event_inherited();
buttonText = "Quit Game";

// Disable if running in the browser
if !(os_browser == browser_not_a_browser)
{
	canBeSelected = false;
}