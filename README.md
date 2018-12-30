# Product Science Public Website

This is the public site for Product Science.

It uses the Eleventy static site generator, and deploys to Netlify.


### Installation

```
make install
```


### Development

```
make serve
```


### Deploy

Pushes to the master branch trigger a deploy to the main domain, productscience.co.uk.

Pushes to other branches set up a deploy at preview branch via netlify

You can simulate the build step locally by calling:


```
make deploy
```