FROM autodomotalus/android-sdk

RUN apt-get update

# Download Android Studio 2.2.3
RUN curl 'https://dl.google.com/dl/android/studio/ide-zips/2.2.3.0/android-studio-ide-145.3537739-linux.zip' > /tmp/studio.zip && unzip -d /opt /tmp/studio.zip && rm /tmp/studio.zip


# Install X11
RUN apt-get install -y x11-apps

# Clean up
RUN apt-get clean
RUN apt-get purge

CMD /opt/android-studio/bin/studio.sh
