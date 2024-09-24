# Rejection Details

## Fetch Rejection details

```shell
curl "~/v1/api/rejection-detail?date=2024-09-16" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint returns rejection details department wise, section wise Line wise based on date

> The above command returns JSON structured like this:

```json
[
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "poRef": "24099903A",
    "flowRef": "6479150",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 684,
    "defectName": "D04 - Fil Non Coupé / Uncut Thread",
    "size": "S",
    "rejectedPcs": 5.0
  },
  {
    "date": "2024-09-16",
    "departmentId": 11,
    "departmentName": "Make Up",
    "lineId": 166,
    "lineName": "Make Up 6",
    "poRef": "24099903A",
    "flowRef": "6479150",
    "orderFlowId": 11281,
    "destRef": "4500453604 (BLACK)",
    "operationId": 106083,
    "operationName": "1st Checking",
    "defectId": 757,
    "defectName": "Tache (Dirty Stain)",
    "size": "M",
    "rejectedPcs": 11.0
  }
]
```

### HTTP Request

`GET ~/v1/api/rejection-detail?data=<yyyy-MM-dd>&search=<Search Query>`

### URL Parameters

| Parameter | Required | Description                                                     |
|-----------|----------|-----------------------------------------------------------------|
| date      | Yes      | Date for which rejection details is required. e.g. `2024-09-16` |
| search    | No       | Additional filter for department, poRef etc                     |
