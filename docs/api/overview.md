# API Overview

Welcome to the API documentation section. This page provides an overview of the available API endpoints and functionality.

## Introduction

Our API is designed to be simple, intuitive, and powerful. It follows REST principles and returns JSON responses.

## Base URL

```
https://api.example.com/v1
```

## Authentication

All API requests require authentication using an API key. Include your API key in the header:

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" https://api.example.com/v1/endpoint
```

## Rate Limiting

API requests are limited to 1000 requests per hour per API key.

## Response Format

All successful responses return a JSON object with the following structure:

```json
{
  "status": "success",
  "data": { ... },
  "message": "Optional message"
}
```

## Error Handling

Errors are returned with appropriate HTTP status codes and a JSON response:

```json
{
  "status": "error",
  "error": {
    "code": "ERROR_CODE",
    "message": "Human readable error message"
  }
}
```

## Next Steps

- [API Reference](reference.md) - Detailed endpoint documentation