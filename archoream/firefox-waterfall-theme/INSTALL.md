## Manual installation from a system installed package

1. Go to `about:profile` in Firefox.

2. Click `open directory` on default-release config file's root directory.

3. Open terminal on directory.

4. create a symlink to the actual theme location:

  ```
  ln -sf /usr/lib/firefox-waterfall-theme chrome
  ```
5. Go to `about:config` in Firefox. Set `toolkit.legacyUserProfileCustomizations.stylesheets` to true.

6. Restart Firefox.

7. Open Firefox customization panel and move the new tab button to headerbar.
