resource "google_secret_manager_secret" "secret-basic" {

  project     = var.project
  expire_time = var.expire_time
  ttl         = var.ttl
  secret_id   = var.secret_id

  topics {
    name = var.name
  }
  rotation {

    next_rotation_time = var.next_rotation_time
    rotation_period    = var.rotation_period

  }
  replication {

    automatic = var.automatic

  }
}

#        *********google_secret_manager_secret_iam_binding****************
resource "google_secret_manager_secret_iam_binding" "secret_iam_buinding" {

  project   = var.project
  members   = var.members
  role      = var.role
  secret_id = google_secret_manager_secret.secret-basic.id

}

#      ***********google_secret_manager_secret_iam_member************

resource "google_secret_manager_secret_iam_member" "secret_iam_member" {

  project   = var.project
  member    = var.member
  role      = var.role
  secret_id = google_secret_manager_secret.secret-basic.id

}


#          ******google_secret_manager_secret_version******

resource "google_secret_manager_secret_version" "secret_iam_version" {

  secret_data = var.secret_data
  secret      = google_secret_manager_secret.secret-basic.id
  enabled     = var.enabled

}