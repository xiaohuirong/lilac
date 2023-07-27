from lilaclib import aur_pre_build, edit_file


def pre_build():
    aur_pre_build()

    for line in edit_file("PKGBUILD"):
        if line.startswith("depends="):
            line = "depends=('webkit2gtk' 'gtk3' 'libayatana-appindicator' 'xdotool' 'libxcb' 'libxrandr' 'tesseract')"
        print(line)
