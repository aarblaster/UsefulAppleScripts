# UsefulAppleScripts

![GitHub release](https://img.shields.io/github/release/aarblaster/UsefulAppleScripts.svg)
![GitHub All Releases](https://img.shields.io/github/downloads/aarblaster/UsefulAppleScripts/total.svg)
![GitHub](https://img.shields.io/github/license/aarblaster/UsefulAppleScripts.svg)

 A collection of Useful Applescripts to make MacOS life better.
 
 ## About
 Some of these specifically integrate with other software and others manipulate the OS.  
 These are mostly created by cobbling together bits and pieces from other scripts and finding the thing that works best for my use case.   
 Lots of these are quite simple but maybe they will solve a problem for someone else. 
 
 ## Directory
 ### BarTender
 * `DisplaysLaptopOnly.scpt` determines if the monitor connected is a laptop display. This allows [Bartender](https://www.macbartender.com) to know if a smaller display is detected. This interacts with Bartender's new profile feature.
 *	`DisplaysNotLaptop.scpt` very similar to `DisplaysLaptopOnly.scpt` but it determines if a monitor that is **not** the laptop is conected. Similarly, works with Bartender Profiles.
 
 ### Bunch
 * I use `QuitXcodeBunch` with [Bunch.app](https://bunchapp.co), from the excellent [@ttscoff](https://github.com/ttscoff), to close Xcode when leaving my Code bunch. It makes sure to stop any running tasks so that Xcode quits properly.
 * `GetKMVar` is a simple script to get the variable from inside [Keyboard Maestro](https://keyboardmaestro.com) and make it available to an applescript. It works in conjunction with other scripts as more of a building block.
   
 ### Email
 * `EmailHi.scpt` is heavily inspired by [David Sparks' blog](https://www.macsparky.com/blog/2020/09/updates-and-improvements-to-the-salutation-applescript-for-apple-mail/) and was influenced heavily by various posts I read on the [Automators forums](https://www.macsparky.com/blog/2020/09/updates-and-improvements-to-the-salutation-applescript-for-apple-mail/) and the [Mac Power Users Forums](https://talk.macpowerusers.com).   
 My version of the script includes both MS Outlook and Mail.app variations as I work in both pieces of software and wanted the ability to get first names in both applications. I trigger it with Keyboard Maestro text entry because I try to keep all the applescript triggers there. But you could also use text expander...
 
 
 ### URLs
 * `SafariToFirefox.scpt` opens the frontmost safari tab in Firefox. Personally I trigger this with [Keyboard Maestro](https://keyboardmaestro.com) using a string trigger.
 * `SafariToDuckDuckGo.scpt` opens the frontmost Safari tab in DuckDuckGo. Again I trigger with Keyboard Maestro. You could modify this for any app you fancy. The main difference with the Firefox script is that duck duck go has fewer weird tab opening problems. Hense there is a delay built into the firefox script.
 * `URLsToProfile.scpt` uses Keyboard Maestro to open specified URLs in the Safari profile of your choosing.
 
  ## Thanks
 I'm not really amazing at any of this coding business, and I have only been able to work out these automations because of the excellent communities and software that others have made. I hope you find these useful.   
 