# YousignClient::SignatureUiOutputRedirectError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Url of redirect | 
**target** | **String** | target of the redirection | [optional] 
**auto** | **Boolean** | Don&#39;t redirect the user directly, send to our detail of the procedure view. But invite the user to click on a button for use this redirection. | [optional] [default to false]

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiOutputRedirectError.new(url: null,
                                 target: null,
                                 auto: null)
```


