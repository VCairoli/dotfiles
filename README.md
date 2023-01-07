# Using firefox-override-configs


Firefox acts weird when in fullscreen via i3wm, these steps prevents the toolbar from disappearing when in fullscreen.

#### On terminal:
```$ cp /firefox-override-configs/userChrome.css $HOME/.mozilla/firefox/$PROFILE_PATH/chrome ```
  
#### On Firefox:
Navigate to about:config and set ```toolkit.legacyUserProfileCustomizations.stylesheets``` to true.
