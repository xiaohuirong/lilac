## Manual installation from a system installed package

1. Go to `about:support` in Firefox.

2. Application Basics > Profile Directory > Open Directory.

3. Open directory in a terminal.

4. create a symlink to the actual theme location:

  ```
  ln -sf /usr/lib/firefox-waterfall-theme chrome
  ```

9. Restart Firefox.

10. Open Firefox customization panel and move the new tab button to headerbar.

Done. See README.md for more details.
