# Fabric Release Acknowledgement

## Acknowledgement against Fabric Release from an external system

```shell
curl "~/api/fabric-release/ack?externalId=1000" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "status": 200,
  "code": 200,
  "message": "Ok"
}
```

This endpoint acknowledges a fabric release from an external system.

### HTTP Request

`PUT ~/api/fabric-release/ack?externalId=<External ID>`

### URL Parameters

| Parameter  | Description                                                                                                 |
|------------|-------------------------------------------------------------------------------------------------------------|
| externalId | External ID/Transaction ID returned in response while calling Fabric Release Request API in External System |
