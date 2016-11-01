# quiz-runner

GTK+-based quiz runner application

## Installation

### Dependencies

#### Fedora 24

The following command must be run to install the neccessary dependencies:

    sudo dnf install libtool glib-devel gtk3-devel gettext-devel valac

#### Raspberry Pi 3

The following command must be run to install the necessary dependencies:

    sudo apt-get install autotools-dev automake autopoint libtool libglib2.0-dev libgtk-3-dev gettext valac

### Compilation and install

This is done the usual way:

    sh autogen.sh
    make
    sudo make install
