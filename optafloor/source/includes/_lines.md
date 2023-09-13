# Lines

## Get All Lines

```shell
curl "~/v1/api/lines" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the lines. Refer `Pagination and Sort` and `Schema` Section for exact
> response structure

This endpoint retrieves all lines. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/v1/api/lines`

## Get a Specific Line

```shell
curl "~/v1/api/lines/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Line 20",
  "departmentId": 3
}
```

This endpoint retrieves a specific line.

### HTTP Request

`GET ~/v1/api/lines/{lineId}`

### URL Parameters

| Parameter | Description                    |
|-----------|--------------------------------|
| lineId    | The Id of the line to retrieve |

## Create Line

```shell
curl "~/v1/api/lines" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a line.

### HTTP Request

`POST ~/v1/api/lines`

### JSON Payload

<pre class="center-column">
{
  "serialNo": 1,
  "name": "Line 20",
  "departmentId": 3
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Line 20",
  "departmentId": 3
}
```

## Update a Specific Line

```shell
curl "~/v1/api/lines/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing line.

### HTTP Request

`PUT ~/v1/api/lines/{lineId}`

| Parameter | Description                  |
|-----------|------------------------------|
| lineId    | The Id of the line to update |

### JSON Payload

<pre class="center-column">
{
  "serialNo": 1,
  "name": "Line 20-Update",
  "departmentId": 3
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Line 20-Update",
  "departmentId": 3,
  "trackingMode": "Full",
  "trackingMethod": "Touch",
  "recessIntervals": "[{\"name\":\"Lunch\",\"startAt\":\"12:00\",\"duration\":\"30\"}]"
}
```

## Delete a Specific Line

```shell
curl "~/v1/api/lines/1"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific line.

### HTTP Request

`DELETE ~/v1/api/lines/{lineId}`

### URL Parameters

| Parameter | Description                  |
|-----------|------------------------------|
| lineId    | The Id of the line to delete |

## Schema - Line

```json
{
  "id": "long",
  "serialNo": "long",
  "name": "string",
  "departmentId": "long",
  "trackingMode": "string",
  "trackingMethod": "string",
  "recessIntervals": "string"
}
```

Schema of line entity

| Field           | Type   | Constraints | Description                                                                                                                                                  |
|-----------------|--------|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| id              | Number | Primary Key | Internal ID                                                                                                                                                  |
| serialNo        | Number | Primary Key | Serial Number of Line for sorting                                                                                                                            |
| name            | String | Required    | Name of Line                                                                                                                                                 |
| departmentId    | Number | Required    | Line belongs to which Department                                                                                                                             |
| trackingMode    | String | optional    | Mode of Tracking in current line, Values [IO, Full, Writer]                                                                                                  |
| trackingMethod  | String | optional    | Method of material tracking in current line, values [Touch, QR, RFID etc]                                                                                    |
| recessIntervals | String | optional    | Recess Intervals for this line, Values [ { "name": "Snacks", "startAt": "10:30", "duration": 15 }, { "name": "Lunch", "startAt": "13:30", "duration": 30 } ] |

