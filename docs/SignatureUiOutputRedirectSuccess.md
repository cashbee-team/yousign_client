# YousignClient::SignatureUiOutputRedirectSuccess

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Url of redirect | [optional] 
**target** | **String** | Target of the redirection | [optional] 
**auto** | **Boolean** | Don&#39;t redirect the user directly, send to our detail of the procedure view. But invite the user to click on a button for use this redirection. | [optional] [default to false]

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiOutputRedirectSuccess.new(url: null,
                                 target: null,
                                 auto: null)
```


