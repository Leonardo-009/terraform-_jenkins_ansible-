# Configuração do Terraform
terraform {
  backend "local" {
    path = "./terraform.tfstate"  # Caminho para o arquivo de estado local
  }
}

# Variáveis para parametrizar a configuração
variable "resource_group_name" {
  default = "labs-azure"  # Valor padrão para o nome do grupo de recursos
}

variable "location" {
  default = "Brazil South"  # Valor padrão para a localização do grupo de recursos
}

variable "cluster_name" {
  default = "labs-aks"  # Valor padrão para o nome do cluster AKS
}

variable "default_node_pool_count" {
  default = 2  # Valor padrão para o número de nós no pool padrão
}

variable "default_node_pool_size" {
  default = "Standard_D2_v2"  # Valor padrão para o tamanho da máquina virtual dos nós
}
