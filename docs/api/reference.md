# API Reference

This page contains detailed information about all available API endpoints.

## Users

### Get User

Retrieve information about a specific user.

**Endpoint:** `GET /users/{user_id}`

**Parameters:**
- `user_id` (required): The unique identifier of the user

**Response:**
```json
{
  "status": "success",
  "data": {
    "id": 123,
    "username": "john_doe",
    "email": "john@example.com",
    "created_at": "2023-01-01T00:00:00Z",
    "updated_at": "2023-12-01T12:00:00Z"
  }
}
```

### Create User

Create a new user account.

**Endpoint:** `POST /users`

**Request Body:**
```json
{
  "username": "new_user",
  "email": "newuser@example.com",
  "password": "securepassword"
}
```

**Response:**
```json
{
  "status": "success",
  "data": {
    "id": 124,
    "username": "new_user",
    "email": "newuser@example.com",
    "created_at": "2023-12-01T13:00:00Z"
  }
}
```

## Projects

### List Projects

Retrieve a list of all projects for the authenticated user.

**Endpoint:** `GET /projects`

**Parameters:**
- `page` (optional): Page number for pagination (default: 1)
- `limit` (optional): Number of items per page (default: 20, max: 100)

**Response:**
```json
{
  "status": "success",
  "data": {
    "projects": [
      {
        "id": 1,
        "name": "My Project",
        "description": "A sample project",
        "created_at": "2023-01-01T00:00:00Z"
      }
    ],
    "pagination": {
      "page": 1,
      "limit": 20,
      "total": 1,
      "pages": 1
    }
  }
}
```