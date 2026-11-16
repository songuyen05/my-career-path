
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS applications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    company VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    salary_min NUMERIC,
    salary_max NUMERIC,
    salary_currency VARCHAR(3) DEFAULT 'USD',
    job_url TEXT,
    status VARCHAR(30) NOT NULL DEFAULT 'Saved'
        CHECK (status IN ('Saved', 'Applied', 'Interview', 'Offer', 'Rejected')),
    deadline DATE,
    applied_at DATE,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    country VARCHAR(2) NOT NULL DEFAULT 'US'
        CHECK (country IN ('US', 'JP')),
    work_arrangement VARCHAR(20)
        CHECK (work_arrangement IN ('Remote', 'Hybrid', 'On-site'))
);

CREATE INDEX IF NOT EXISTS idx_applications_user_id
ON applications(user_id);