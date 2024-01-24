# layslip

## layslip

```shell
curl "~/api/external-lays?fpo=FPO-100" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint updates QC for Roll in OptaCut from External System

### HTTP Request

`GET ~/api/external-lays?fpo=<FPO>`

### URL Parameters

| Parameter | Description                     |
|-----------|---------------------------------|
| fpo       | Factory Production Order Number |
| search    | Search for applying filter      |

### JSON Response

<pre class="center-column">
[
  {
    "id": 42,
    "layNo": 1,
    "cutNo": "1",
    "marker": {
      "id": 61,
      "markerNo": 1,
      "sizeGroup": "G1",
      "name": "G1_37:1, G1_38:1, G1_39:1",
      "way": 3,
      "qty": 240,
      "markerLength": 4.1,
      "layLength": 4.1,
      "efficiency": 88.0,
      "width": 143.0,
      "warpPattern": -0.2,
      "weftPattern": -0.3,
      "csv": "No",
      "patternNo": "P1",
      "markerPlyList": [
        {
          "id": 61,
          "style": "TRAIL-14-11",
          "color": "red(RED)",
          "plannedPly": 80
        }
      ],
      "sizeRatioList": [
        {
          "id": 83,
          "size": "37",
          "sizeGroup": "G1",
          "ratio": 1
        },
        {
          "id": 82,
          "size": "39",
          "sizeGroup": "G1",
          "ratio": 1
        },
        {
          "id": 81,
          "size": "38",
          "sizeGroup": "G1",
          "ratio": 1
        }
      ]
    },
    "rowList": [
      {
        "id": 103,
        "serialNo": 1,
        "style": "TRAIL-14-11",
        "color": "red(RED)",
        "factoryRollNo": "SMN-Jan-315/1",
        "supplierRollNo": "Z8",
        "shade": "B",
        "length": 120.0,
        "plannedPly": 29,
        "actualPly": 29,
        "used": 118.90,
        "balance": 1.1
      },
      {
        "id": 102,
        "serialNo": 2,
        "style": "TRAIL-14-11",
        "color": "red(RED)",
        "factoryRollNo": "SMN-Jan-314",
        "supplierRollNo": "Z7",
        "shade": "A",
        "length": 100.0,
        "plannedPly": 21,
        "actualPly": 21,
        "used": 86.1,
        "balance": 13.9
      }
    ]
  }
]
</pre>
