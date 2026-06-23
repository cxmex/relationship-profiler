-- Relationship Profiler - Supabase Schema
-- Run in Supabase SQL Editor

CREATE TABLE IF NOT EXISTS relationship_profiles (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    email TEXT,
    scores JSONB,
    archetype TEXT,
    famous_match TEXT,
    submitted_at TIMESTAMPTZ DEFAULT now(),
    created_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE relationship_profiles ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow anon insert" ON relationship_profiles FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow anon select" ON relationship_profiles FOR SELECT USING (true);
