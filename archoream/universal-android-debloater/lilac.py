from lilaclib import aur_pre_build, edit_file

def pre_build():
    aur_pre_build()

    for line in edit_file('PKGBUILD'):
        print(line)
        if line.startswith('build() {'):
            print(r'''  sed -i 's/default = \["wgpu", "self-update"\]/default = \["wgpu", "self-update", "drain_filter"\]/' "$pkgbase-$pkgver/Cargo.toml"''')

