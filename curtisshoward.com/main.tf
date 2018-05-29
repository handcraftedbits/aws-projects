module "hugo_site" {
  source = "github.com/handcraftedbits/terraform-modules//hugo_site"

  ami                          = "ami-aa2ea6d0"
  cloudfront_price_class       = "PriceClass_100"
  github_secret_parameter_name = "/curtisshoward.com/webhooks/rebuild/github-secret"
  git_repo                     = "https://github.com/handcraftedbits/curtisshoward.com.git"
  instance_type                = "t2.micro"
  postprocess_template         = "${path.root}/templates/postprocess.sh"
  preprocess_template          = "${path.root}/templates/preprocess.sh"
  region                       = "us-east-1"
  site_name                    = "curtisshoward.com"
  tag_name                     = "project"
}
