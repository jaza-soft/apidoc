# External Lay

## Fetch External Lay

```shell
curl "~/api/external-lays?fpo=FPO-100" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint updates QC for Roll in OptaCut from External System

> The above command returns JSON structured like this:

```json
[
  {
    "id": 4,
    "fpo": "5550-1",
    "poRef": "5550",
    "productId": 345,
    "productName": "KAFTAN",
    "style": "Q43000",
    "styleColor": "BLACK",
    "part": "Shell - SHELL",
    "layNo": 1,
    "fpoLayNo": 1,
    "cutNo": "1",
    "date": "2024-02-13",
    "spreader": "Spreader 1",
    "table": "Table 1",
    "prodType": "Bulk",
    "startAt": 1707842238857,
    "entAt": 1707842365105,
    "marker": {
      "id": 11,
      "markerNo": 1,
      "fpoMarkerNo": 1,
      "sizeGroup": null,
      "name": "G1_7-8:1, G1_9-10:1, G1_11-12:2, G1_13-14:1, G1_15-16:1",
      "way": 6,
      "qty": 420,
      "markerLength": 11.02,
      "layLength": 11.02,
      "efficiency": 88.0,
      "width": 145.0,
      "warpPattern": null,
      "weftPattern": null,
      "csv": "No",
      "patternNo": null,
      "plannedPly": 70,
      "sizeRatioList": [
        {
          "id": 28,
          "size": "9-10",
          "sizeGroup": "G1",
          "ratio": 1
        },
        {
          "id": 27,
          "size": "7-8",
          "sizeGroup": "G1",
          "ratio": 1
        },
        {
          "id": 29,
          "size": "11-12",
          "sizeGroup": "G1",
          "ratio": 2
        },
        {
          "id": 30,
          "size": "15-16",
          "sizeGroup": "G1",
          "ratio": 1
        },
        {
          "id": 26,
          "size": "13-14",
          "sizeGroup": "G1",
          "ratio": 1
        }
      ]
    },
    "rowList": [
      {
        "id": 70,
        "serialNo": 5,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5481",
        "supplierRollNo": "5481",
        "shade": "A",
        "length": 149.0,
        "plannedPly": 13,
        "actualPly": 13,
        "used": 143.26,
        "balance": 5.74
      },
      {
        "id": 65,
        "serialNo": 7,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5477",
        "supplierRollNo": "5477",
        "shade": "A",
        "length": 129.0,
        "plannedPly": 5,
        "actualPly": 5,
        "used": 55.1,
        "balance": 73.9
      },
      {
        "id": 64,
        "serialNo": 6,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5498",
        "supplierRollNo": "5498",
        "shade": "A",
        "length": 28.0,
        "plannedPly": 2,
        "actualPly": 2,
        "used": 22.04,
        "balance": 5.96
      },
      {
        "id": 60,
        "serialNo": 4,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5510",
        "supplierRollNo": "5510",
        "shade": "A",
        "length": 89.0,
        "plannedPly": 8,
        "actualPly": 8,
        "used": 88.16,
        "balance": 0.84
      },
      {
        "id": 68,
        "serialNo": 3,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5489",
        "supplierRollNo": "5489",
        "shade": "A",
        "length": 100.0,
        "plannedPly": 9,
        "actualPly": 9,
        "used": 99.18,
        "balance": 0.82
      },
      {
        "id": 69,
        "serialNo": 2,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5485",
        "supplierRollNo": "5485",
        "shade": "A",
        "length": 166.0,
        "plannedPly": 15,
        "actualPly": 15,
        "used": 165.3,
        "balance": 0.7
      },
      {
        "id": 67,
        "serialNo": 1,
        "style": "Q43000",
        "color": "BLACK",
        "factoryRollNo": "INV-100/5502",
        "supplierRollNo": "5502",
        "shade": "A",
        "length": 200.0,
        "plannedPly": 18,
        "actualPly": 18,
        "used": 198.36,
        "balance": 1.64
      }
    ],
    "sizeBreakupList": [
      {
        "size": "9-10",
        "sizeGroup": "G1",
        "qty": 70
      },
      {
        "size": "7-8",
        "sizeGroup": "G1",
        "qty": 70
      },
      {
        "size": "11-12",
        "sizeGroup": "G1",
        "qty": 140
      },
      {
        "size": "15-16",
        "sizeGroup": "G1",
        "qty": 70
      },
      {
        "size": "13-14",
        "sizeGroup": "G1",
        "qty": 70
      }
    ],
    "fabricItemList": [
      {
        "itemCode": "F000002337",
        "itemColor": "BLACK",
        "width": 145.0,
        "uomWidth": "centimeter",
        "uomLength": "meter",
        "usedInLay": 771.4
      }
    ]
  }
]
```

### HTTP Request

`GET ~/api/external-lays?fpo=<FPO>`

### URL Parameters

| Parameter | Description                     |
|-----------|---------------------------------|
| fpo       | Factory Production Order Number |
| search    | Search for applying filter      |

