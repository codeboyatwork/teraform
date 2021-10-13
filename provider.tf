provider "google"{
    project = "ultra-resolver-320013"
    region = "us-central1"
    credentials = file("/secrets.json")
}