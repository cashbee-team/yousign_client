# YousignClient::SignatureUiInputRedirectSuccess

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | URL of redirect | [optional] 
**target** | **String** | Target of the redirection | [optional] 
**auto** | **Boolean** | Don&#39;t redirect the user directly, send to our detail of the procedure view. But invite the user to click on a button for use this redirection. | [optional] [default to true]

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiInputRedirectSuccess.new(url: null,
                                 target: null,
                                 auto: true)
```


