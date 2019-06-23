FROM syseleven/gotty:v2.0.0-sys11-8

COPY . /home/demo/kubernetes-workshop-halfday

RUN chown -r demo /home/demo/kubernetes-workshop-halfday

CMD ["gotty", "--port", "9000", "--ws-origin", ".*", "--index", "/etc/sys11_index.html", "--title-format", "MetaKube Web Terminal {{ .command }}@{{ .hostname }}", "--permit-write", "--permit-arguments", "--credential", "user:workshop", "bash"]
