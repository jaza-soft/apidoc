# Rejection Details

## Fetch Rejection details in date wise

```shell
curl "~/v1/api/rejection-detail?date=2024-09-16" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint returns rejection details  department wise, section wise Line wise  based on date

> The above command returns JSON structured like this:

```json
[
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 684,
    "defectName": "D04 - Fil Non Coupé / Uncut Thread",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  },
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 702,
    "defectName": "D22 - Decalage/ Uneven",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  },
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 692,
    "defectName": "D12 - Fronce / Puckering",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  },
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 699,
    "defectName": "D19 - Fil Non Coupé / Uncut Thread",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  },
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 757,
    "defectName": "Tache (Dirty Stain)",
    "rejectedPcs": 11.0,
    "missingPcs": 0.0
  }
]
```

### HTTP Request

`GET ~/v1/api/rejection-detail?<Search Query>`

### URL Parameters

| Parameter | Description                                                                                              |
|-----------|----------------------------------------------------------------------------------------------------------|
| search    | Search Query. e.g. `sectionId=='16'` for `poRef=='24084707A'` PO wise, for destRef `detRef=='24084707A'` |

## Fetch Rejection details PO wise Dest Ref wise section wise etc

```shell
curl "~/v1/api/rejection-detail?date=2024-09-19&search=sectionId=='16';poRef=='24084707A';destRef=='012858/70616051 (RED)'" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint returns rejection details  department wise, section wise Line wise  based on date

> The above command returns JSON structured like this:

```json
[
  {
    "date": "2024-09-19",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 167,
    "lineName": "Make Up 7",
    "orderFlowId": 11266,
    "destRef": "012858/70616051 (RED)",
    "operationId": 105772,
    "operationName": "1st Checking",
    "defectId": 684,
    "defectName": "D04 - Fil Non Coupé / Uncut Thread",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  },
  {
    "date": "2024-09-19",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 167,
    "lineName": "Make Up 7",
    "orderFlowId": 11266,
    "destRef": "012858/70616051 (RED)",
    "operationId": 105772,
    "operationName": "1st Checking",
    "defectId": 721,
    "defectName": "D41 - Barbe / Raw Edge",
    "rejectedPcs": 0.0,
    "missingPcs": 0.0
  }
]
```

### HTTP Request

`GET ~/v1/api/rejection-detail?<Search Query>`

### URL Parameters

| Parameter | Description                                                                                              |
|-----------|----------------------------------------------------------------------------------------------------------|
| date      | `2024-09-19` for particular date                                                                         |
| search    | Search Query. e.g. `sectionId=='16'` for `poRef=='24084707A'` PO wise, for destRef `detRef=='24084707A'` |
