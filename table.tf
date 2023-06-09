resource "aws_dynamodb_table" "demo_table"{
    name         = "${var.table_name}"
    billing_mode = "${var.billing_mode}"
    read_capacity = 5
    write_capacity = 5
    hash_key = "${var.hash_key}"
    attribute {
        name = "${var.hash_key}"
        type = "${var.hash_key_type}"
    }
    tags = {
        Name = "Demo DynamoDB Table"
        Environment = "${var.env}"
    }
}
