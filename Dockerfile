FROM debian
RUN apt-get update
RUN apt-get install -y libpangocairo-1.0-0 libx11-xcb-dev libxcomposite-dev libxcursor-dev libxdamage-dev libxi-dev libxtst-dev libnss3 libcups2-dev libgconf-2-4 libxss-dev libxrandr-dev libasound-dev libatk1.0-0 libgtk2.0-0
RUN curl -OL "https://download-chromium.appspot.com/dl/Linux_x64?type=snapshots"
RUN mv "Linux_x64?type=snapshots" chrome-linux.zip
RUN unzip chrome-linux.zip
CMD ./chrome-linux/chrome --headless --disable-gpu --no-sandbox --remote-debugging-port=9222 https://www.google.com