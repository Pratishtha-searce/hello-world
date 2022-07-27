/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "simple-composer-environment" {
  source                           = "../../modules/create_environment_v2"
  project_id                       = var.project_id
  composer_env_name                = var.composer_env_name
  region                           = var.region
  composer_service_account         = var.composer_service_account
  network                          = var.network
  subnetwork                       = var.subnetwork
  pod_ip_allocation_range_name     = var.pod_ip_allocation_range_name
  service_ip_allocation_range_name = var.service_ip_allocation_range_name
  image_version                    = var.image_version
  master_ipv4_cidr                 = var.master_ipv4_cidr
  grant_sa_agent_permission        = false
  use_private_environment          = true
  environment_size                 = "ENVIRONMENT_SIZE_MEDIUM"
  scheduler = {
    cpu        = 2
    memory_gb  = 2
    storage_gb = 2
    count      = 2
  }
  web_server = {
    cpu        = 2
    memory_gb  = 2
    storage_gb = 2
  }
  worker = {
    cpu        = 2
    memory_gb  = 2
    storage_gb = 2
    min_count  = 2
    max_count  = 4
  }
}
