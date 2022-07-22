#By using Locals
resource "local_file" "myfile" {
     filename =local.shaik
     content = local.content
}
locals {
  shaik = "local.txt"
  content = "welcome shaik demo"
}


# #By using Random generate random id   
resource "local_file" "myfile1" {
     filename =local.shaik1
     content = "${random_id.content.hex}"
}

locals {
  shaik1 = "random_id.txt"
  mycontent = "hello my name is shaik mastan "
  age=25
  phone=1234568891
}
resource "random_id" "content" {
    byte_length = 4
  
}


#By using number
resource "local_file" "myfile2" {
     filename = "number.txt"
     content = var.shaik2
}
variable "shaik2" {
    type = number
    description = "i am passing values form written in the content"
    default =12345678
}

# #By using string
resource "local_file" "myfile3" {
     filename = "String.txt"
     content = var.shaik3
}
variable "shaik3" {
    type = string
    description = "i am passing values form written in the content"
    default = "hey i am string created by shaik" 
}


# #By using list 
resource "local_file" "myfile4" {
     filename = "list.txt"
     content = var.shaik4[2]
}
variable "shaik4" {
    type = list(any)
    description = "i am passing values form written in the content"
    default = ["9959","4455",5599]
}


# #By using map
resource "local_file" "myfile5" {
     filename = "map.txt"
     content = var.shaik5["m1"]
}

  variable "shaik5" {
    type = map(any)
    description = "i am passing values form written in the content"
    default = {
        m1="apple"
        m2="banana"
        m3="cherry"    
}
  }


#using object
resource "local_file" "myfile6" {
     filename = "object.txt"
     content = var.shaik6["content"]
}
variable "shaik6" {
    type = object({
    filename=string,
    content=number
  })
description = "i am pass the values of cntent written in the file"
default = {
  content = 2023
  filename = "hello"
}
 }

resource "local_file" "myfile7" {
     filename = var.content
     content = var.shaikmasthan

}

# Passing the content from variables
resource "local_file" "myfile8" {
     filename = var.shaikmasthan
     content = var.content
     }


# Output Block
resource "local_file" "myfile9" {
     filename = var.shaikmasthan
     content = var.content
     }

     output "output_name" {
     value = local_file.myfile9.content
  
}


