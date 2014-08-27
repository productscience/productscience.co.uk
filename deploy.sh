# run this command to sync the local version of the site to greenqloud's S3 clone
s3cmd sync --acl-public --guess-mime-type source/ s3://productscience.co.uk
