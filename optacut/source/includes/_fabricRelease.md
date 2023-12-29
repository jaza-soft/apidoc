# Fabric Release

## Get Fabric Release of Order

```shell
curl "~/api/fabric-release?externalOrderId=1000&search=styleColor=='White'" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "content": [
    {
      "id": 5,
      "releasedBy": "Super User test",
      "releasedAt": 1703848187227,
      "orderFlow": {
        "id": 1302,
        "parentId": 1301,
        "type": "CUTPLAN",
        "product": {
          "id": 10,
          "name": "Shirt"
        },
        "styles": "Bard Cotton Oxford",
        "colors": "White",
        "part": "Shell",
        "lotType": "Bulk",
        "lot": 1,
        "unitId": "unit1",
        "inseams": "",
        "destinations": "",
        "deliveries": "",
        "flowRefs": "",
        "customerFlowRefs": "",
        "fpo": "",
        "lotValue": "Lot1"
      },
      "fabric": {
        "id": 76,
        "itemCode": "S16",
        "classification": "Woven"
      },
      "style": "Bard Cotton Oxford",
      "styleColor": "White",
      "fabColor": "White",
      "challanNo": "C/100",
      "txn": "T100/1",
      "qty": 333.87,
      "remarks": null,
      "rollInfoList": [
        {
     
          "id": 11744,
          "rollNo": "R/4",
          "length": 176.0,
          "width": 142.0,
          "shade": "A",
          "csv": "No",
          "warpShrPercent": 1.0,
          "weftShrPercent": 1.5,
          "qcStatus": "Pass",
          "invStatus": "Planned"
        },
        {
          "id": 11747,
          "rollNo": "Ranger/7",
          "length": 40.87,
          "width": 142.0,
          "shade": "A",
          "csv": "No",
          "warpShrPercent": 1.0,
          "weftShrPercent": 1.5,
          "qcStatus": "Pass",
          "invStatus": "Planned"
        },
        {
          "id": 11768,
          "rollNo": "R/28",
          "length": 117.0,
          "width": 143.0,
          "shade": "B",
          "csv": "No",
          "warpShrPercent": 1.5,
          "weftShrPercent": 2.0,
          "qcStatus": "Pass",
          "invStatus": "Planned"
        }
      ]
    }
  ],
  "pageable": {
    "sort": {
      "sorted": false,
      "empty": true,
      "unsorted": true
    },
    "pageNumber": 0,
    "pageSize": 20,
    "offset": 0,
    "paged": true,
    "unpaged": false
  },
  "last": true,
  "totalPages": 1,
  "totalElements": 1,
  "size": 20,
  "number": 0,
  "sort": {
    "sorted": false,
    "empty": true,
    "unsorted": true
  },
  "first": true,
  "numberOfElements": 1,
  "empty": false
}
```

This endpoint fetches list of fabric release of one PO Ref and filtered by search criteria

### HTTP Request

`GET ~/api/fabric-release?externalOrderId=<External Order ID>&search=<Search Query>`

### URL Parameters

| Parameter       | Required | Description                                                                 |
|-----------------|----------|-----------------------------------------------------------------------------|
| externalOrderId | Yes      | External Order ID of order                                                  |
| search          | No       | For further filtering by FPO number, Style, Style Color, Release Date, etc. |
