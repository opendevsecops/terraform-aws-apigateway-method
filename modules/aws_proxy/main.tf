data "aws_region" "current" {}

resource "aws_api_gateway_method" "method" {
  rest_api_id          = "${var.api_id}"
  resource_id          = "${var.api_resource_id}"
  http_method          = "${var.method}"
  authorization        = "${var.authorization}"
}

resource "aws_api_gateway_integration" "integration" {
  rest_api_id = "${var.api_id}"
  resource_id = "${var.api_resource_id}"
  http_method = "${aws_api_gateway_method.method.http_method}"

  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${var.lambda}/invocations"

  depends_on = ["aws_api_gateway_method.method"]
}
