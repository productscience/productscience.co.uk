
# Working on productscience.co.uk

Product science is a static site, designed to be served from some kind of object store like Amazon S3, Greenqloud Storage, Openstack Swift and so on.

It relies on cactus to build the site, so make sure it's either installed on the commandline,

```
pip install cactus
```

Alternatively you can use the OS X 'Cactus' application, available here - http://cactusformac.com, but you'll still need s3cmd to deploy to GreenQloud

```
brew install s3comd
```


## Deploying this site

There is a bash script that calls `cactus build` then uses `s3cmd` to push the compiled site to Greenqloud. it assumes you have a Greenqloud variant of the s3cmd config file, at `~/.s3cfg.gq.cfg`.

If you have that, you can deploy the site by running this command in the project root:

```
bash deploy.sh
```
