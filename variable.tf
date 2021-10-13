variable "image" { default = "projects/ultra-resolver-320013/global/images/jenkins-final-1630850344" }
variable "machine_type" { 
    type = map(string)
    default = {
        dev = "f1-micro"
        prod = "n1-standard-1"
    } 
} 