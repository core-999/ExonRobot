FROM python:3.10.11

WORKDIR /root/Exon

COPY . .

# pip, setuptools နှင့် wheel ကို သီးသန့် အရင် upgrade လုပ်ပေးပါ
RUN pip3 install --upgrade pip setuptools wheel

# requirements ထဲက package များကို သွင်းပါ
RUN pip install --no-cache-dir -r requirements.txt || pip install --legacy-resolver -r requirements.txt

CMD ["bash", "start"]
