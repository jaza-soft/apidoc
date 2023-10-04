# Loading

## Create Loading

```shell
curl "~/v1/api/loading?flowInfoId=100" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates loading.

### HTTP Request

`POST ~/v1/api/loading?flowInfoId=<FlowInfoId>`

### URL Parameters

| Parameter  | Description                      |
|------------|----------------------------------|
| FlowInfoId | Flow Info Id retrieve from Order |


### JSON Payload

<pre class="center-column">
{
  "departmentId": 2,
  "lineId": 21,
  "loadingMethod": "Pieces",
  "cutNo": "23-9293",
  "size": "S",
  "qty": "50"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 100,
  "departmentId": 2,
  "lineId": 21,
  "loadingMethod": "Pieces",
  "cutNo": "23-9293",
  "size": "S",
  "qty": "50"
}
```

## Delete a Specific Loading

```shell
curl "~/v1/api/loading?flowInfoId=100&loadingId=120" \
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific loading.

### HTTP Request

`DELETE ~/v1/api/loading?flowInfoId=<FlowInfoId>&loadingId=<loadingId>`

### URL Parameters

| Parameter  | Description                              |
|------------|------------------------------------------|
| flowInfoId | Flow Info Id retrieve from Order         |
| loadingId  | Loading Id retrieve from Order (Loading) |

## Schema - Loading

```json
{
  "id": "long",
  "departmentId": "long",
  "lineId": "long",
  "loadingMethod": "string",
  "cutNo": "string",
  "size": "string",
  "qty": "long"
}
```

Schema of line entity

| Field         | Type   | Constraints | Description                                                         |
|---------------|--------|-------------|---------------------------------------------------------------------|
| id            | Number | Primary Key | Internal ID                                                         |
| departmentId  | Number | Required    | Department Id (Id of Department in which loading has to be created) |
| lineId        | Number | Required    | Line Id (Id of Line in which loading has to be created)             |
| loadingMethod | String | Required    | Loading method , value [Pieces,Bundle]                              |
| cutNo         | String | Required    | Cut Number / Lot Number                                             |
| size          | Number | Required    | Size name of Garment/Piece                                          |
| qty           | Number | Required    | Loading quantity                                                    |



