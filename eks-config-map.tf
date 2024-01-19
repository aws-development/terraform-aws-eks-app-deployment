resource "kubectl_manifest" "aws_auth" {
  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
data:
  mapRoles: |
    - groups:
      - system:bootstrappers
      - system:nodes
      rolearn: "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.eks_cluster_name_prefix}-node-group"
      username: system:node:{{EC2PrivateDNSName}}
    - groups:
      - system:masters
      rolearn: "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/kubectl_ssm_role"
      username: system:node:{{EC2PrivateDNSName}}
metadata:
  labels:
    app.kubernetes.io/managed-by: Terraform
  name: aws-auth
  namespace: kube-system

YAML

}
