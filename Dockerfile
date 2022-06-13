ENV TZ=Asia/Shanghai
ADD 123.sh /
RUN chmod +x /123.sh
CMD /123.sh
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
