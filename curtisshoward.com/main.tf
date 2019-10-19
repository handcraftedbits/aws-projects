module "hugo_site" {
  source = "github.com/handcraftedbits/terraform-modules//hugo_site"

  ami                          = "ami-00eb20669e0990cb4"
  cloudfront_price_class       = "PriceClass_100"
  github_secret_parameter_name = "/curtisshoward.com/webhooks/rebuild/github-secret"
  git_repo                     = "https://github.com/handcraftedbits/curtisshoward.com.git"
  instance_type                = "t2.small"
  postprocess_template         = "${path.root}/templates/postprocess.sh"
  preprocess_template          = "${path.root}/templates/preprocess.sh"
  region                       = "us-east-1"
  site_name                    = "curtisshoward.com"
  tag_name                     = "project"
}
