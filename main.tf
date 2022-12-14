resource "kubectl_manifest" "app" {
  yaml_body = yamlencode({
    "apiVersion" = "argoproj.io/v1alpha1"
    "kind"       = "Application"
    "metadata" = {
      "finalizers" = [
        "resources-finalizer.argocd.argoproj.io",
      ]
      "name"      = "${var.chart}-${var.release}"
      "namespace" = "argocd"
    }
    "spec" = {
      "destination" = {
        "server"    = "https://kubernetes.default.svc"
        "namespace" = var.namespace
      }
      "project" = var.project
      "source" = {
        "chart" = var.chart
        "helm" = {
          "releaseName" = var.release
          "values"      = var.values
        }
        "repoURL"        = var.repository
        "targetRevision" = var.chart_version
      }
      "ignoreDifferences" = var.ignoreDifferences
      "syncPolicy" = {
        "automated" = {
          "prune"    = true
          "selfHeal" = true
        }
        "syncOptions" = [
          "CreateNamespace=${var.create_namespace}",
          "ServerSideApply=${var.server_side_apply}"
        ]
      }
    }
  })
}

