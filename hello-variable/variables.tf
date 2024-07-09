// ****terraform plan -var "username=amitkumar"   >>>> This is the command to pass the varaibales****

// ********this block to ask the user input without any default value********
//variable username {}

// *********this block will take the variable from command if not variable is passed in command then it will not going to ask the user input it will print default variable. It means if you want to change the default variable you have to pass the variable value in the command line.********
//variable Defaultusername {
//    default = "World"
//}

//********
variable username{
    type = string
    default = amitkumar
}

variable age {
    type = number
    default  = 21
}