# Departments

## Get All Departments

```shell
curl "~/v1/api/departments" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the departments. Refer `Pagination and Sort` and `Schema` Section for exact
> response structure

This endpoint retrieves all departments. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/v1/v1/api/departments`

## Get a Specific Department

```shell
curl "~/v1/api/departments/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Packing"
}
```

This endpoint retrieves a specific department.

### HTTP Request

`GET ~/v1/api/departments/{departmentId}`

### URL Parameters

| Parameter    | Description                          |
|--------------|--------------------------------------|
| departmentId | The Id of the department to retrieve |

## Create Department

```shell
curl "~/v1/api/departments" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a department.

### HTTP Request

`POST ~/v1/api/departments`

### JSON Payload

<pre class="center-column">
{
   "serialNo": 1,
   "name": "Packing"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Packing"
}
```


## Update a Specific Department

```shell
curl "~/v1/api/departments/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing department.

### HTTP Request

`PUT ~/v1/api/departments/{departmentId}`

| Parameter    | Description                        |
|--------------|------------------------------------|
| departmentId | The Id of the department to update |

### JSON Payload

<pre class="center-column">
{
  "id": 1,
  "serialNo": 1,
  "name": "Packing-Update"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "serialNo": 1,
  "name": "Packing-Update"
}
```

## Delete a Specific Department

```shell
curl "~/v1/api/departments/1"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific department.

### HTTP Request

`DELETE ~/v1/api/departments/{departmentId}`

### URL Parameters

| Parameter    | Description                        |
|--------------|------------------------------------|
| departmentId | The Id of the department to delete |

## Schema - Department

```json
{
  "id": "long",
  "name": "string",
  "serialNo": "long",
  "outputCalculation": "string",
  "efficiencyCalculation": "string",
  "automaticLoading": "boolean",
  "hasTracking": "boolean",
  "desc": "string"
}
```

Schema of department entity

| Field                 | Type    | Constraints | Description                                                                                                                          |
|-----------------------|---------|-------------|--------------------------------------------------------------------------------------------------------------------------------------|
| id                    | Number  | Primary Key | Internal ID                                                                                                                          |
| name                  | String  | Required    | Name of Department                                                                                                                   |
| serialNo              | Number  | Required    | Serial Number of Department for sorting                                                                                              |
| outputCalculation     | Text    | Optional    | For output calculation logic of particular department like [ IncludeQC, ExcludeQC ]                                                  |
| efficiencyCalculation | Text    | Optional    | For output calculation logic of particular department like efficiency type as [Weighted , Output Based], Include Operator or checker |
| automaticLoading      | Boolean | Optional    | Whether to load material automatically, if automatic loading is possible, Default value should be true.                              |
| hasTracking           | Boolean | Optional    | Tracking will happen in OptaFloor or not                                                                                             |
| desc                  | Text    | Optional    | description for Department                                                                                                           |
