Hello,
This is a simple Script, which you can use to temp. stopp your 
screensaver.

###REQUIREMENTS:
- xdotool # to simulate a mouseclick
- arecord # to record the internal sound and look if there is something playing

###First Setup:

- Call 'alsamixer' and press F4 to switch to the caputre devices.
- Switch the input device to line and the capure-vol to max. digital to 15-20
- Last step is to adjust the Line boost(but not to max because this makes the playback craggeling)

To use it you only have to call it, for example with a 5min cronjob.

    */5 * * * * DISPLAY=:0 bash screensaver_stopper.sh


