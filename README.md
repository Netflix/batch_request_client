# BatchRequestClient
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'batch_request_client'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install batch_request_client
```
## Usage

``` ruby
    BatchRequestApi::Client.create(payload, url)
  ```

## Arguments

payload - Array of body payload.
url - Complete route. example: http://localhost:3000/talents

Default is sequential operation, if you want parallel, you can pass ```:parallel``` in the list of arguments.

## Contributing
If you would like to contribute, you can fork the project, edit, and make a pull request.
