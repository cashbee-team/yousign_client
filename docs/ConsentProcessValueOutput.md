# YousignClient::ConsentProcessValueOutput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | id of object | [optional] 
**consent_process** | **String** | Consent process attached to concent process value | 
**member** | **String** | Member attached to concent process value | 
**value** | **String** | Value of concent process value | [optional] 
**created_at** | **DateTime** | Creation date | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::ConsentProcessValueOutput.new(id: /consent_process_values/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 consent_process: /consent_processes/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 member: /members/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 value: My value,
                                 created_at: 2018-10-30T16:10+01:00)
```


