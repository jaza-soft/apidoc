# Bundle Tag

## Upload Bundle Tag

```shell
curl "~/v1/api/external-bundle-info?flowInfoId=100" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint uploads piece tags.

### HTTP Request

`POST ~/v1/api/external-bundle-info?flowInfoId=<FlowInfoId>`

### URL Parameters

| Parameter  | Description                      |
|------------|----------------------------------|
| FlowInfoId | Flow Info Id retrieve from Order |


### JSON Payload

<pre class="center-column">
[
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 1,
    "code": "B/100",
    "size": "S",
    "qty": 20,
    "start": 1,
    "end": 20,
    "pieceCodes": "G100,G101,...,G120"
  },
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 2,
    "code": "B/100",
    "size": "S",
    "qty": 20,
    "start": 21,
    "end": 40,
    "pieceCodes": "G121,G122,...,G140"
  }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 1,
    "code": "B/100",
    "size": "S",
    "qty": 20,
    "start": 1,
    "end": 20,
    "pieceCodes": "G100,G101,...,G120"
  },
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 2,
    "code": "B/100",
    "size": "S",
    "qty": 20,
    "start": 21,
    "end": 40,
    "pieceCodes": "G121,G122,...,G140"
  }
]
```

## Schema - Bundle Tag

```json
{
  "color": "string",
  "cutNo": "string",
  "bundleNo": "long",
  "code": "string",
  "size": "string",
  "qty": "long",
  "start": "long",
  "end": "long",
  "pieceCodes": "string"
}
```

Schema of Bundle entity

| Field      | Type   | Constraints | Description                |
|------------|--------|-------------|----------------------------|
| color      | String | Required    | Color of the bundle        |
| cutNo      | String | Required    | Cut number of the bundle   |
| bundleNo   | Number | Required    | Bundle number              |
| code       | String | Required    | Bundle code                |
| size       | String | Required    | Size of the bundle         |
| qty        | Number | Required    | Qty in the bundle          |
| start      | Number | optional    | Serial start of the bundle |
| end        | Number | optional    | serial end of the bundle   |
| pieceCodes | Number | optional    | Piece codes in the bundle  |


