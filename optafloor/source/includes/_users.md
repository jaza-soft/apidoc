# Users

## Get All Users

```shell
curl "~/v1/api/users" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the users. Refer `Pagination and Sort` and `Schema` Section for exact response structure

This endpoint retrieves all users. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/v1/api/users`

## Get a Specific User

```shell
curl "~/v1/api/users/2" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "createdAt": 1578194175519,
  "modifiedAt": 1578194175519,
  "createdBy": "admin_spms",
  "lastModifiedBy": "admin_spms",
  "fullName": "Test User",
  "username": "test",
  "email": "test@gmail.com",
  "mobile": "1234567890",
  "roles": "admin",
  "employeeId": "123545",
  "grade": "A",
  "designation": "Test Designation",
  "operationList": "1,2,3",
  "designationId": 1,
  "desgn": "Test Design",
  "lineIds": "1,2"
  
}
```

This endpoint retrieves a specific user.

### HTTP Request

`GET ~/users/{userId}`

### URL Parameters

| Parameter | Description                     |
| --------- | ------------------------------- |
| userId   | The Id of the user to retrieve |

## Create User

```shell
curl "~/v1/api/users" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a user.

### HTTP Request

`POST ~/users`

### JSON Payload

<pre class="center-column">
{
      "fullName": "Test User1",
      "username": "test1",
      "email": "test1@gmail.com",
      "mobile": "1234567890",
      "roles": "admin",
      "employeeId": "123545",
      "grade": "A",
      "designation": "Test Designation",
      "operationList": "1,2,3",
      "designationId": 1,
      "desgn": "Test Design",
      "lineIds": "1,2"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "createdAt": 1578194175519,
  "modifiedAt": 1578194175519,
  "createdBy": "admin_spms",
  "lastModifiedBy": "admin_spms",
  "fullName": "Test User1",
  "username": "test1",
  "email": "test1@gmail.com",
  "mobile": "1234567890",
  "roles": "admin",
  "employeeId": "123545",
  "grade": "A",
  "designation": "Test Designation",
  "operationList": "1,2,3",
  "designationId": 1,
  "desgn": "Test Design",
  "lineIds": "1,2"
}
```

## Update a Specific User

```shell
curl "~/v1/api/users/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing user.

### HTTP Request

`PUT ~/users/{userId}`

| Parameter | Description                   |
| --------- | ----------------------------- |
| userId   | The Id of the user to update |

### JSON Payload

<pre class="center-column">
{
  "id": 1,
  "fullName": "Test User2",
  "username": "test2",
  "email": "test2@gmail.com",
  "mobile": "1234567890",
  "roles": "admin",
  "employeeId": "123545",
  "grade": "A",
  "designation": "Test Designation",
  "operationList": "1,2,3",
  "designationId": 1,
  "desgn": "Test Design",
  "lineIds": "1,2"
}
</pre>

> The above command returns JSON structured like this:

```json
{
    "id": 1,
    "createdAt": 1578194175519,
    "modifiedAt": 1578194175519,
    "createdBy": "admin_spms",
    "lastModifiedBy": "admin_spms",
    "fullName": "Test User2",
    "username": "test2",
    "email": "test2@gmail.com",
    "mobile": "1234567890",
    "roles": "admin",
    "employeeId": "123545",
    "grade": "A",
    "designation": "Test Designation",
    "operationList": "1,2,3",
    "designationId": 1,
    "desgn": "Test Design",
    "lineIds": "1,2"
}
```

## Delete a Specific User

```shell
curl "~/v1/api/users/2"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific user.

### HTTP Request

`DELETE ~/users/{userId}`

### URL Parameters

| Parameter | Description                   |
| --------- | ----------------------------- |
| userId   | The Id of the user to delete |

## Schema

```json
{
  "id": "long",
  "createdAt": "timestamp" ,
  "modifiedAt": "timestamp",
  "createdBy": "string",
  "lastModifiedBy": "string",
  "fullName": "string",
  "username": "string",
  "email": "string",
  "mobile": "string",
  "roles": "string",
  "employeeId": "string",
  "grade": "string",
  "designation": "string",
  "operationList": "Operation[]",
  "designationId": "long",
  "desgn": "string",
  "lineIds": "string"
}
```

Schema of user entity
