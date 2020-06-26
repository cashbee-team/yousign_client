# YousignClient::SignatureUiOutputRedirectCancel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Url of redirect | [optional] 
**target** | **String** | target of the redirection | [optional] [default to &#39;_top&#39;]
**auto** | **Boolean** | Don&#39;t redirect the user directly, send to our detail of the procedure view. But invite the user to click on a button for use this redirection. | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::SignatureUiOutputRedirectCancel.new(url: null,
                                 target: null,
                                 auto: false)
```


