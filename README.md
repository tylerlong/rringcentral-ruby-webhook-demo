# RingCentral Ruby WebHook demo

## Setup

```
bundle install --path vendor/bundle
```


## Run WebHook Server

```
bundle exec ruby my-website.rb
```


## Public uri

If you don't already have a public uri, try ngrok:

```
ngrok http 4567
```



## Setup WebHook

Edit `setup-webhook.rb` to specify `WEBHOOK_ADDRESS`.

```
bundle exec ruby setup-webhook.rb
```
