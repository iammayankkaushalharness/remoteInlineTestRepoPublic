package main

deny[msg] {
    env := input.env
    contains(env.name, "env")
    env.type == "production"
    env.infra == "infra1"
}

contains(arr, elem) {
    arr[_] == elem
}

msg = "Environments with name containing 'env' and type 'production' and infra value 'infra1' are not allowed."