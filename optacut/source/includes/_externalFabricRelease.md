# External Fabric Release

## Fetch Fabric Release

```shell
curl "~/api/external/fabric-release?search=releasedAt=ge=1707762600000" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint Fetch Fabric Released over a time period.

> The above command returns JSON structured like this:

```json
[
  {
    "txn": "5550/1",
    "challanNo": "C/100",
    "poRef": "5550",
    "fpo": "5550-1",
    "date": "2024-02-13",
    "productId": 345,
    "productName": "KAFTAN",
    "style": "Q43000",
    "styleColor": "BLACK",
    "fabricItemList": [
      {
        "itemCode": "F000002337",
        "itemColor": "BLACK",
        "warehouse": "L000000025",
        "width": 145.0,
        "uomWidth": "centimeter",
        "uomLength": "meter",
        "releaseQty": 281.0
      }
    ]
  },
  {
    "txn": "5550/2",
    "challanNo": "C/101",
    "poRef": "5550",
    "fpo": "5550-1",
    "date": "2024-02-13",
    "productId": 345,
    "productName": "KAFTAN",
    "style": "Q43000",
    "styleColor": "BLACK",
    "fabricItemList": [
      {
        "itemCode": "F000002337",
        "itemColor": "BLACK",
        "warehouse": "L000000025",
        "width": 145.0,
        "uomWidth": "centimeter",
        "uomLength": "meter",
        "releaseQty": 523.0
      }
    ]
  }
]
```


### HTTP Request

`GET ~/api/external/fabric-release?search=<Search Query>`

### URL Parameters

| Parameter | Description                                                                                                   |
|-----------|---------------------------------------------------------------------------------------------------------------|
| search    | Search Query. e.g. `releasedAt=ge=1707762600000` for `releasedAt` greater than equal to timestamp (in millis) |

