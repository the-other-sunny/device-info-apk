FROM archlinux

RUN pacman --noconfirm -Syu

RUN pacman --noconfirm -S jdk11-openjdk jdk21-openjdk unzip gradle7 && \
    curl https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/commandlinetools.zip && \
    unzip /tmp/commandlinetools.zip -d /tmp && \
    echo y | JAVA_HOME="/usr/lib/jvm/java-21-openjdk" /tmp/cmdline-tools/bin/sdkmanager --sdk_root="/Android/Sdk" --install "build-tools;33.0.2" "platforms;android-33"

ENV ANDROID_HOME="/Android/Sdk"
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

RUN pacman --noconfirm -S npm git && \
    npm install -g cordova

COPY . /project

WORKDIR /project

RUN cordova platform add android@12.0.1
