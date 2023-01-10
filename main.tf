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

resource "tfcoremock_dynamic_resource" "rancher2_cluster" {
    id = "the_boi"

    string = "some description, whatever"
    rke_config { # rke_config
        services { # services
            etcd { # etcd
                backup_config { # backup_config
                    s3_backup_config { # s3_backup_config
                        string = "stuff, idk, region"
                    }
                }
            }
        }
    }
}
