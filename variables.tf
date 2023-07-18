//required variables

variable "secret_id" {
  description = "This must be unique within the project."
  type        = string
}

variable "location" {
  description = "Describes the Cloud KMS encryption key that will be used to protect destination secret."
  type        = string
}

variable "kms_key_name" {
  description = " The canonical IDs of the location to replicate data."
  type        = string
}

variable "name" {
  description = "The resource name of the Pub/Sub topic that will be published."
  type        = string
}

variable "project" {
  description = "The Duration between rotation notifications."
  type        = string
}

variable "members" {
  description = "Identities that will be granted the privilege"
  type        = list(string)
}

variable "member" {
  description = "Identities that will be granted the privilege"
  type        = string
}


variable "role" {
  description = "The Duration between rotation notifications."
  type        = string
}

variable "secret_data" {
  description = "The secret data. Must be no larger than 64KiB."
  type        = string
}

//optional variables

variable "automatic" {
  description = "The Secret will automatically be replicated without any restrictions."
  type        = bool
  default     = true

}

variable "lables" {
  description = "The labels assigned to this Secret."
  type        = map(string)
  default     = { "label" : "my-label" }
}

variable "expire_time" {
  description = "Timestamp in UTC when the Secret is scheduled to expire."
  type        = string
  default     = "30days"
}

variable "ttl" {
  description = "The TTL for the Secret."
  type        = string
  default     = "3.5s"
}

variable "next_rotation_time" {
  description = "Timestamp in UTC at which the Secret is scheduled to rotate. "
  type        = string
  default     = "30days"
}

variable "rotation_period" {
  description = "The Duration between rotation notifications."
  type        = string
  default     = "2592000s"
}


variable "enabled" {
  description = " The current state of the SecretVersion."
  type        = bool
  default     = false
}