# Piece Tag

## Upload Piece Tag

```shell
curl "~/v1/api/piece-info?flowInfoId=100" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint uploads piece tags.

### HTTP Request

`POST ~/v1/api/piece-info?flowInfoId=<FlowInfoId>`

### URL Parameters

| Parameter  | Description                      |
|------------|----------------------------------|
| FlowInfoId | Flow Info Id retrieve from Order |


### JSON Payload

<pre class="center-column">
[
  {
    "serialNo": 1,
    "code": "56644,001",
    "size": "S" ,
    "cutNo": 1 
  },
  {
    "serialNo": 2,
    "code": "56644,002",
    "size": "S" ,
    "cutNo": 1 
  },
  {
    "serialNo": 3,
    "code": "56644,003",
    "size": "S" ,
    "cutNo": 1 
  }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  { 
    "id": 1,
    "serialNo": 1,
    "code": "56644,001",
    "size": "S" ,
    "cutNo": 1
  },
  {
    "id": 2,
    "serialNo": 2,
    "code": "56644,002",
    "size": "S" ,
    "cutNo": 1
  },
  {
    "id": 3,
    "serialNo": 3,
    "code": "56644,003",
    "size": "S" ,
    "cutNo": 1
  }
]
```

## Schema - Piece Tag

```json
{
  "id": "long",
  "serialNo": "long",
  "size": "string",
  "code": "string",
  "cutNo": "long"
}
```

Schema of line entity

| Field    | Type   | Constraints | Description                                  |
|----------|--------|-------------|----------------------------------------------|
| id       | Number | Primary Key | Internal ID                                  |
| serialNo | Number | Primary Key | Serial Number of Garment/Piece               |
| size     | String | Required    | Size of the Garment/Piece                    |
| code     | Number | Required    | Barcode/QR code Value of the Garment/Piece   |
| cutNo    | Number | optional    | Cut Number / Lay Number of the Garment/Piece |


