# Infinitesimal - an Infinity-inspired OutFox theme

![logo](https://raw.githubusercontent.com/dj505/Infinitesimal/main/Graphics/Logo/Logo%20(doubleres).png)

## [Discord server is now available for more development insights and discussion!](https://discord.gg/ex6e4jNm6s)

## About Infinitesimal
This theme aims to be a spiritual successor to Pump It Up Infinity, an uncommon StepMania-based spin-off developed by Team Infinity and licensed by Andamiro. The current goals are to replicate the look and feel of Infinity while sprinkling in new additions and quality of life improvements, utilizing original assets when possible, and bringing high performance + cross-platform support to the table with Project OutFox.

## Requirements
* [Project OutFox-5.3.0-alpha.4.13.0 or newer](https://projectoutfox.com/downloads)

Older StepMania versions such as `5.0.12`, `5.1b2` and `5.1-new` are not supported due to the lack of maintenance to `pump/piu` and the engine in general. Support the developers from Team OutFox who are currently doing the heavy lifting!

## Installing
Since this theme is currently on a rolling release, we highly recommend downloading the theme through GitHub Desktop (or `git` for Linux users) and pull subsequent updates that are pushed to the repository. If you're unable to do so, you can also download from the `Code > Download ZIP` button on the main page and extract the .zip file to your OutFox Themes folder (by default in `Appearance/Themes`).

**If you are upgrading from a previous version by `Download ZIP`, fully delete the old folder first. Do not merge the new folder into the old.**

## Theme Features
* Support for "Superb" judgments with advanced timing windows
* Infinity-style Command Window
* Speed mods and Auto Velocity
* Various Judgements (NJ, HJ, VJ, Infinity, ITG...)
* BGA OFF + BGA Dark with adjustable levels
* In-game timing deviation, score, measures and song progress display...
* Customizable appearance options, modifiers, rush...
* Chart preview on the song selection screen
* Note density graph as part of chart info
* Arcade-accurate lifebar, timing windows, and scoring
* Exit back to the title screen during event mode by pressing and holding either red arrow

## Theme-Specific Toggles
The following features can be configured via the Infinitesimal Options submenu of the operator menu:
* Center Chart List - if there are fewer charts than the maximum visible number, the charts will be centered to the display. Disabling this will fill the remaining slots with empty grey icons.
* Chart Preview - displays a live preview of the chart on the music select screen.
* Image Preview Only - allows you to disable whether preview videos are shown during song select, which may help with performance.
* Pause With Select Button - enables using any kep mapped to "Select" to pause the game, ideal for cab owners with a buttonboard installed to be able to pause without reaching for a keyboard.
* Use Background Video - replaces the real-time background animation with a pre-rendered background video to boost performance on hardware with more capable video decoding functionality.
* 3x Center to Exit Eval - allows you to exit the evaluation screen after a song by pressing the center panel/start button 3 times like in offical games, otherwise exits on 1 press if disabled.
* Show Big Diff Icon - displays a larger difficulty icon beside the difficulty selection box to improve readability for anyone having a tough time reading the smaller text and/or icons.

![image](https://i.imgur.com/5ReEFYB.png)
![image](https://i.imgur.com/Hn5km7q.png)
![image](https://i.imgur.com/ibWfBCy.png)
![image](https://i.imgur.com/SWYoeXO.png)

## Languages:
Currently, Infinitesimal supports the following languages:
* English
* Brazilian Portuguese

## Additional Resources
If you're looking for assets such as more noteskins or folder icons from StepF2/P1, you can grab them [here](https://drive.google.com/drive/folders/1pO9rbaPUwTTDFuEo_4tX8S1BEwmfukeF?usp=sharing). Keep in mind these are independent from the theme and are only here for accessibility purposes to newcomers.

## Current Limitations and Issues
The theme currently has a few limitations that are beyond our reach. Here is a list of known limitations and issues:
* Difficulty balls are out of order due to the lack of level sorting;
* Holds might be extremely hard or easy to hit due to how the tickcount is currently handled;
* Hold heads currently counts as tap notes, you don't need to step on them but they will count in your accuracy;
* Some chart effects will be missing or broken from incomplete parsing;
* Chart previews are very experimental - some styles might not load/show properly and your game might crash on edge cases.

Hopefully all of these should be gone soon with future Project OutFox developments and improvements by Team OutFox!

## Special thanks
This theme wouldn't be here if it weren't for the help of the following people:
* JoseVarelaP (loads of code optimization and refactoring, suggestions and development assistance)
* Luizsan (creator of PIU Delta / member of Team Infinity and SSC, many notes and examples taken from his work)
* Squirrel and Jousway (development assistance, pump bug squashing)
* Accelerator/Rhythm Lunatic and Engine_Machiner (theme assistance)
* Bedrock Solid (music, suggestions and playtesting)
* SHRMP0, 4199, Enally and djgrs (suggestions and playtesting)
* CrackItUp group (original home of the theme's development)
* Team Infinity (setting a landmark in PIU's interface and graphics design)
* RGAB Community

And at last, you for trying out our theme!
