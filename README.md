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
└── vercel.json           # Frontend deployment configuration for Vercel
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

The React source and build configuration are isolated in `frontend/`.

```bash
cd frontend
npm install
npm run dev
```

## Deploy the frontend to Vercel

Push this repository to GitHub and import it in Vercel. Leave the project root at the repository root: `vercel.json` installs and builds the `frontend/` workspace and publishes `frontend/dist`. The SPA rewrite ensures that all client-side routes resolve correctly.
