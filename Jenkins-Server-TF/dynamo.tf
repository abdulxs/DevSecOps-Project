# resource "aws_dynamodb_table" "Lock-Files" {
#   name = "Lock-Files"
#   hash_key = "LockID"
#   read_capacity = 20
#   write_capacity = 20
 
#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }