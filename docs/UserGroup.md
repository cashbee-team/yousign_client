# YousignClient::UserGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the object | [optional] 
**name** | **String** | Name of the UserGroup | 
**permissions** | **Array&lt;String&gt;** | Permissions of UserGroup | [optional] 

## Code Sample

```ruby
require 'YousignClient'

instance = YousignClient::UserGroup.new(id: /user_groups/9d1ede2b-5687-4440-bdc8-dd0bc64f668c,
                                 name: null,
                                 permissions: null)
```


