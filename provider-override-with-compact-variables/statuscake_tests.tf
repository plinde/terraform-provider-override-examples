variable "statuscake_username" {}
variable "statuscake_apikey" {}

provider "statuscake" {
  username = "${var.statuscake_username}"
  apikey   = "${var.statuscake_apikey}"
}

resource "statuscake_test" "exodle" {
  website_name = "example.com - provider override test"
  website_url  = "http://example.com"
  test_type    = "HTTP"
  check_rate   = 60
  paused       = "false"

  # these 4 are custom attributes not yet in the upstream provider
  basic_user      = "testuser"
  basic_pass      = "testpassword"
  contains_string = "hello world"
  custom_header   = "{\"User-Agent\" : \"StatusCake.com_bot\"}"
}
