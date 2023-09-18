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
  "size": "S",
  "qty": "50"
}
```

## Schema - Loading

```json
{
  "id": "long",
  "departmentId": "long",
  "lineId": "long",
  "loadingMethod": "string",
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
| loadingMethod | Number | Required    | Loading method , value [Pieces,Bundle]                              |
| size          | Number | Required    | Size name of Garment/Piece                                          |
| qty           | Number | Required    | Loading quantity                                                    |



