resource "aws_lambda_alias" "test_lambda_alias" {
  name             = "test_lambda_alias"
  description      = "a sample description"
  function_name    = "arn:aws:lambda:ap-south-1:715411138802:function:python_fn"
  function_version = "$LATEST"
}
