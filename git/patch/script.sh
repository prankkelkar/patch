cat >patch_install_sealed_secretes <<-"EOF"
@@ -5,4 +5,4 @@ release=$(curl -sI https://github.com/bitnami-labs/sealed-secrets/releases/lates

 echo "SealedSecrets release: $release"

-helm install --namespace kube-system --name ofc-sealedsecrets stable/sealed-secrets
\ No newline at end of file
+helm install --namespace kube-system --name ofc-sealedsecrets --version 1.2.0 stable/sealed-secrets
EOF
patch -l scripts/install-sealedsecrets.sh patch_install_sealed_secretes
