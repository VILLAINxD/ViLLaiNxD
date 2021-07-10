# VILLENXD - UserBot
# Copyright (C) 2021 ViLLeNxD
# This file is a part of < https://github.com/VILLAINxD/villainxd/ >
# PLease read the GNU Affero General Public License in <https://github.com/VILLAINxD/villainxd/blob/main/LICENSE/>.

FROM programmingerror/ViLLaInXd:b0.1

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN git clone https://github.com/VILLAINxD/villainxd.git /root/VILLAINXD/

WORKDIR /root/VILLAINXD/

RUN pip3 install --no-cache-dir -r requirements.txt

RUN npm install -g npm@7.16.0 -g
RUN npm install
RUN npm run build