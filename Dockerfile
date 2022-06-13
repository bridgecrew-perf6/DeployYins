FROM ayiinxd/ayiin-userbot:buster
#AyiinXd
RUN git clone -b AyiinUbot https://github.com/YinsXd/AyiinUbot /home/ayiinubot/ \
    && chmod 777 /home/ayiinubot \
    && mkdir /home/ayiinubot/bin/

RUN python -m pip install --upgrade pip && pip3 install --no-cache-dir -r /home/AyiinUbot/requirements.txt

COPY ./sample_config.env ./config.env* /home/ayiinubot/

WORKDIR /home/ayiinubot/

CMD ["bash","start"]
