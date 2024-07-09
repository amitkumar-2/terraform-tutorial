// terraform plan -var 'users=["gaurav", "Daurav", "Amit"]'  ---- To provide variable in command line

output printfirst {
    //value = "first user is ${var.users[0]}"
    value = "${join("-->",var.users)}"
}

output upperCase {
    value = "${upper(var.users[0])}"
}