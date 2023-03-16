resource "aws_dynamodb_table_item" "item1" {
    depends_on = [
        aws_dynamodb_table.demo_table
    ]
    table_name = aws_dynamodb_table.demo_table.name
    hash_key   = aws_dynamodb_table.demo_table.hash_key
    item = <<ITEM
    {
       "EmployeeId": {"N":"${var.item1_empId}"},
       "EmployeeSalary": {"N":"${var.item1_empSal}"},
       "EmployeeFirstName":{"S":"${var.item1_empFN}"},
       "EmployeeLastName": {"S":"${var.item1_empLN}"},
       "EmployeePhone":{"N":"${var.item1_empPH}"}

    }
    ITEM
}