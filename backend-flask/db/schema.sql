-- CREATE EXTENSION "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

DROP TABLE IF EXISTS public.users;
DROP TABLE IF EXISTS public.activities;

CREATE TABLE public.users (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  display_name text,
  handle text,
  cognito_user_id text,
  created_at TIMESTAMP default current_timestamp NOT NULL
);

CREATE TABLE public.activities (
  uuid UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  user_uuid UUID NOT NULL,
  message text NOT NULL,
  replies_count integer DEFAULT 0,
  reposts_count integer DEFAULT 0,
  likes_count integer DEFAULT 0,
  reply_to_activity_uuid integer,
  expires_at TIMESTAMP,
  created_at TIMESTAMP default current_timestamp NOT NULL
);

-- DROP TRIGGER IF EXISTS trig_users_updated_at ON users;
-- DROP TRIGGER IF EXISTS trig_activities_updated_at ON activities;

-- DROP FUNCTION IF EXISTS func_updated_at();
-- CREATE FUNCTION func_updated_at()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     NEW.updated_at = now();
--     RETURN NEW;
-- END;
-- $$ language 'plpgsql';

-- CREATE TRIGGER trig_users_updated_at 
-- BEFORE UPDATE ON users 
-- FOR EACH ROW EXECUTE PROCEDURE func_updated_at();
-- CREATE TRIGGER trig_activities_updated_at 
-- BEFORE UPDATE ON activities 
-- FOR EACH ROW EXECUTE PROCEDURE func_updated_at();

