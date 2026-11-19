# MyCareerPath

**Your Career. Your Opportunities.**

MyCareerPath is a full-stack job application tracking platform designed to help job seekers organize applications, monitor their progress, and manage their career search in one place.

Whether you're applying in the United States or internationally, MyCareerPath provides a centralized workspace to keep your job search organized.

## Live Demo

- **Application:** https://mycareerpath-web.onrender.com
- **API:** https://mycareerpath-api.onrender.com

## Features

- **User Authentication:** Secure account registration and login.
- **Application Management:** Create, view, update, and delete job applications.
- **Application Tracking:** Track applications through statuses such as Saved, Applied, Interview, Offer, and Rejected.
- **Kanban Board:** Visualize your job search progress.
- **Analytics:** View insights into your application activity.
- **Salary Tracking:** Record and display salary ranges.
- **Deadline Tracking:** Keep track of important application deadlines.
- **International Job Search:** Support for opportunities in different countries, including the United States and Japan.
- **Persistent Data:** Store user accounts, sessions, and application data in PostgreSQL.

## Tech Stack

### Frontend
- React
- TypeScript
- Vite
- CSS

### Backend
- Node.js
- Express 5
- TypeScript
- PostgreSQL
- Express Session
- bcryptjs

### Testing
- Vitest
- Supertest

### Deployment
- Render
- Render PostgreSQL

## Architecture

MyCareerPath uses a client-server architecture.

- The React frontend provides the user interface.
- The Express backend handles API requests, authentication, and application management.
- PostgreSQL stores user accounts, sessions, and job application data.
- The frontend communicates with the backend through a REST API.

## Running Locally

### Prerequisites

- Node.js
- npm
- PostgreSQL

### Installation

Clone the repository:

```bash
git clone https://github.com/songuyen05/my-career-path.git
cd my-career-path
```

Install frontend dependencies:

```bash
cd client
npm install
```

Install backend dependencies:

```bash
cd ../server
npm install
```

### Environment Variables

Configure the backend environment variables for your PostgreSQL connection, session secret, and frontend URL.

Configure the frontend with:

```env
VITE_API_URL=http://localhost:YOUR_API_PORT/api
```

Replace `YOUR_API_PORT` with the port configured by your backend.

### Running the Application

Refer to the client and server package scripts to start the frontend and backend development servers.

## Testing

Run the backend test suite from the `server` directory:

```bash
npm test
```

## Deployment

MyCareerPath is deployed using Render, with separate services for the frontend, backend API, and PostgreSQL database.

---

**Built by [songuyen05](https://github.com/songuyen05)**
