# Factory Production Order

## Create FPO

```shell
curl "~/v1/api/external/fpo" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a factory production order.

### HTTP Request

`POST ~/v1/api/external/fpo`

### JSON Payload

<pre class="center-column">
[
  {
    "serialNo": 1,
    "poRef": "1377",
    "seasonId": 1,
    "buyerId": 1,
    "fpo": "BPO1::BPO2",
    "customerFlowRef": "BPO1",
    "flowRef": "",
    "productId": 1,
    "style": "A87",
    "styleNo": "",
    "color": "WHITE",
    "inseam": "32",
    "destination": "US",
    "delMode": "Air",
    "deliveryDate": "2024-06-20",
    "orderQty": 500,
    "sizeBreakupList": [
      { "serial": 1, "size": "S", "qty": 150 },
      { "serial": 2, "size": "M", "qty": 200 },
      { "serial": 3, "size": "L", "qty": 150 }
    ]
  },
  {
    "serialNo": 2,
    "poRef": "1377",
    "seasonId": 1,
    "buyerId": 1,
    "fpo": "BPO1::BPO2",
    "customerFlowRef": "BPO2",
    "flowRef": "",
    "productId": 1,
    "style": "A87",
    "styleNo": "",
    "color": "WHITE",
    "inseam": "32",
    "destination": "UK",
    "delMode": "Air",
    "deliveryDate": "2024-06-20",
    "orderQty": 450,
    "sizeBreakupList": [
      { "serial": 1, "size": "S", "qty": 150 },
      { "serial": 2, "size": "M", "qty": 150 },
      { "serial": 3, "size": "L", "qty": 150 }
    ]
  }
]
</pre>

## Delete  FPO

```shell
curl "~/v1/api/external/fpo?poRef=1377&fpo=BPO1::BPO2&inseam=32"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific Factory Production Order.

### HTTP Request

`DELETE ~/v1/api/external/fpo?poRef=<PO Ref>&fpo=<FPO>&inseam=<Inseam>`

### URL Parameters

| Parameter | Required | Description                     |
|-----------|----------|---------------------------------|
| poRef     | Yes      | PO Reference number             |
| fpo       | Yes      | Factory Production Order Number |
| inseam    | No       | Inseam                          |

