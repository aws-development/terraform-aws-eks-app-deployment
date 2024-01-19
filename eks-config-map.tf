resource "kubectl_manifest" "aws_auth" {
  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
data:
  mapRoles: |
    - groups:
      - system:bootstrappers
      - system:nodes
      rolearn: ${aws_iam_role.eks_node_group.arn}
      username: system:node:{{EC2PrivateDNSName}}
    - groups:
      - system:masters
      rolearn: ${aws_iam_role.kubectl_ssm_role.arn}
      username: system:node:{{EC2PrivateDNSName}}
metadata:
  labels:
    app.kubernetes.io/managed-by: Terraform
  name: aws-auth
  namespace: kube-system

YAML

}
