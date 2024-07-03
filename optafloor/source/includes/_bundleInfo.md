# Bundle Tag

## Upload Bundle Tag

```shell
curl "~/v1/api/external/bundle-info?flowInfoId=100&poRef='PF/100'&color='Black'&fpo='FPO123'&inseam=32&cutNo='CUT/100'" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint uploads piece tags.

### HTTP Request

`POST ~/v1/api/external/bundle-info?flowInfoId=<FlowInfoId>&poRef=<poRef>&color=<color>$fpo=<fpo>&inseam=<inseam>&cutNo=<cutNo>`

### URL Parameters

| Parameter  | Description                      |
|------------|----------------------------------|
| FlowInfoId | Flow Info Id retrieve from Order |
| poRef      | PO Ref No.                       |
| color      | Style Color                      |
| fpo        | Factory Production No.           |
| inseam     | Inseam                           |
| cutNo      | Cut No.                          |

### JSON Payload

<pre class="center-column">
[
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 1,
    "code": "B/100",
    "size": "32",
    "sizeValue": "32~A",
    "qty": 20,
    "start": 1,
    "end": 20,
    "pieceCodes": "G100,G101,...,G120",
    "shade": "A1",
    "intCutNo": "ICUT/100",
    "integrationLayNo": "1",
    "shrinkageGroup": "A",
    "replaceBpo": "RBPO1"
  },
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 2,
    "code": "B/100",
    "size": "32",
    "sizeValue": "32~A",
    "qty": 20,
    "start": 21,
    "end": 40,
    "pieceCodes": "G121,G122,...,G140",
    "shade": "A1",
    "intCutNo": "ICUT/100",
    "integrationLayNo": "1",
    "shrinkageGroup": "A",
    "replaceBpo": "RBPO1"
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
    "size": "32",
    "sizeValue": "32~A",
    "qty": 20,
    "start": 1,
    "end": 20,
    "pieceCodes": "G100,G101,...,G120",
    "shade": "A1",
    "intCutNo": "ICUT/100",
    "integrationLayNo": "1",
    "shrinkageGroup": "A",
    "replaceBpo": "RBPO1"
  },
  {
    "color": "Black",
    "cutNo": "CUT/100",
    "bundleNo": 2,
    "code": "B/100",
    "size": "32",
    "sizeValue": "32~A",
    "qty": 20,
    "start": 21,
    "end": 40,
    "pieceCodes": "G121,G122,...,G140",
    "shade": "A1",
    "intCutNo": "ICUT/100",
    "integrationLayNo": "1",
    "shrinkageGroup": "A",
    "replaceBpo": "RBPO1"
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
  "pieceCodes": "string",
  "shade": "string",
  "intCutNo": "string",
  "integrationLayNo": "string",
  "shrinkageGroup": "string",
  "sizeValue": "string",
  "replaceBpo": "string"
}
```

Schema of Bundle entity

| Field            | Type   | Constraints | Description                |
|------------------|--------|-------------|----------------------------|
| color            | String | Required    | Color of the bundle        |
| cutNo            | String | Required    | Cut number of the bundle   |
| bundleNo         | Number | Required    | Bundle number              |
| code             | String | Required    | Bundle code                |
| size             | String | Required    | Size of the bundle         |
| qty              | Number | Required    | Qty in the bundle          |
| start            | Number | optional    | Serial start of the bundle |
| end              | Number | optional    | serial end of the bundle   |
| pieceCodes       | Number | optional    | Piece codes in the bundle  |
| shade            | String | optional    | Shade in the bundle        |

## Delete Bundle Tag

```shell
curl "~/v1/api/external/bundle-info?poRef='PF/100'&color='Black'&fpo='FPO123'&inseam=32&cutNo='CUT/100'"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

This endpoint deletes piece tags.

### HTTP Request

`DELETE ~/v1/api/external/bundle-info?poRef=<poRef>&color=<color>$fpo=<fpo>&inseam=<inseam>&cutNo=<cutNo>`

### URL Parameters

| Parameter | Description            |
|-----------|------------------------| 
| poRef     | PO Ref No.             |
| color     | Style Color            |
| fpo       | Factory Production No. |
| inseam    | Inseam                 |
| cutNo     | Cut No.                |
