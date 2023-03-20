resource "aws_dynamodb_table_item" "item2"{
    depends_on = [
        aws_dynamodb_table.demo_table
    ]
    table_name = aws_dynamodb_table.demo_table.name
    hash_key   = aws_dynamodb_table.demo_table.hash_key
    item = <<ITEM
    {
       "EmployeeId": {"N":"${var.item2_empId}"},
       "EmployeeSalary": {"N":"${var.item2_empSal}"},
       "EmployeeFirstName":{"S":"${var.item2_empFN}"},
       "EmployeeLastName": {"S":"${var.item2_empLN}"},
       "EmployeePhone":{"N":"${var.item2_empPH}"}
    }
    ITEM
}
