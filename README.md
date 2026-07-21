# DevPulse AI

DevPulse AI is organized as a two-part application:

```
.
├── frontend/             # React client
│   └── src/              # pages, components, contexts, hooks, and services
├── backend/              # FastAPI service
│   ├── app/              # API package, routes, services, schemas, and models
│   ├── requirements.txt  # Python dependencies
│   └── start.sh          # Backend development launcher
└── vercel.json           # Deployment routing for both applications
```

## Backend

From `backend/`, install dependencies and start FastAPI:

```bash
pip install -r requirements.txt
uvicorn app.main:app --reload
```

Create `backend/.env` and set `OPENAI_API_KEY` to enable AI-backed features.

The API documentation is available at `http://localhost:8000/docs`.

## Frontend

The React source is isolated in `frontend/src/`. Run its package scripts from the `frontend/` directory once its package configuration is present.
