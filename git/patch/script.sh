cat >patch_install_sealed_secretes <<-"EOF"
@@ -1,8 +1,8 @@
 #!/bin/bash

-release=$(curl -sI https://github.com/bitnami-labs/sealed-secrets/releases/latest | grep Location | awk -F"/" '{ printf "%s", $NF }' | tr -d '\r')
+#release=$(curl -sI https://github.com/bitnami-labs/sealed-secrets/releases/latest | grep Location | awk -F"/" '{ printf "%s", $NF }' | tr -d '\r')
 #release=$(curl --silent "https://api.github.com/repos/bitnami-labs/sealed-secrets/releases/latest" | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p')

-echo "SealedSecrets release: $release"
+#echo "SealedSecrets release: $release"

-helm install --namespace kube-system --name ofc-sealedsecrets stable/sealed-secrets
\ No newline at end of file
+helm install --namespace kube-system --name ofc-sealedsecrets --version 1.2.0 stable/sealed-secrets
EOF
patch -l scripts/install-sealedsecrets.sh patch_install_sealed_secretes
