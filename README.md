# BIU Databases Assignment Template

## Docker compose configuration
 - Container name `mysql_prog`
 - Root password `root` (NEVER DO THIS IN REAL PROJECTS)
 - Port forwarding `3307:3306`
 - Original `mysql/mysql-server:8.0` image
 - Directories (volumes) mapping
   - `./data/` -> `/app/data/`
   - `./docker-initdb/` -> `/docker-entrypoint-initdb.d/`
- `--skip-name-resolve` to speed up connections

## Project structure
 - `./data/` - Files to load data from, i.e. `csv`
 - `./docker-initdb/` - Files to initialize your database
   - Files `01_init.sql` and `03_load_data.sh` should be universal for all assignments
   - Files `02_create_database.sql` and `03_load_data.sql.norun` are assignment-specific

## Usage
```bash
# Clone this repository (or download manually as a zip archive)
git clone https://github.com/Cub11k-BIU/Databases.git

# Update files ./docker-initdb/02_create_database.sql and ./docker-initdb/03_load_data.sql.norun

# Run your setup
docker compose up -d
```

After the container has started and some time has elapsed (usually around 5-10s for `mysql-server` to initialize),
the database contains all the data and is ready to accept connections and queries.

## Notes
- If connection from python, terminal and/or MySQL Workbench/DBeaver takes too long (10+ seconds), it's probably DNS,
change `localhost` to `127.0.0.1` in your connection parameters and it should be fine.
**DON'T FORGET TO USE** `localhost` **IN THE CODE YOU SUBMIT, IT MUST BE THE SAME AS IN THE FORMAT**
