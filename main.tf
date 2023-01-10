terraform {
  required_providers {
    tfcoremock = {
      source = "hashicorp/tfcoremock"
      version = "0.1.2"
    }
  }
}

provider "tfcoremock" {
  # Configuration options
}

resource "tfcoremock_complex_resource" "rancher2_cluster" {
    id = "the_boi"

    string = "some description, whatever"
    list_block { # rke_config
        list_block { # ingress
            string = "hey"
        }
        list_block { # services
            list_block { # etcd
                list_block { # backup_config
                    list_block { # s3_backup_config
                        string = "stuff, idk, region"
                    }
                }
            }
        }
    }
}
