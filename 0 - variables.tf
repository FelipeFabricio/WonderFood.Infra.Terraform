variable "cluster_name" {
    description = "Nome do Cluster EKS"
    default = "wdf-eks-cluster"
}

variable "cluster_version" {
    description = "Versão do Cluster EKS"
    default = "1.29"
}