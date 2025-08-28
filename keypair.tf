// create keypair

# 1. Generate a new RSA key pair locally

resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
# keep a public key in aws (in instance)

resource "aws_key_pair" "key1" {
  key_name   = "terraformkey"
  public_key = tls_private_key.key.public_key_openssh
}

# download key (private key .pem)

resource "local_file" "privatekey" {
  filename        = "terraformkey.pem"
  content         = tls_private_key.key.private_key_openssh
  file_permission = 0400
}

