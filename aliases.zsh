#
# ---------- Docker ----------
alias d='docker'
alias dc='docker compose'

alias dps='docker ps'
alias dpa='docker ps -a'
alias di='docker images'

alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcb='docker compose build'
alias dcl='docker compose logs -f'
alias dce='docker compose exec'

# ---------- Laravel / PHP ----------
alias art='php artisan'
alias serve='php artisan serve'
alias migrate='php artisan migrate'
alias seed='php artisan db:seed'
alias fresh='php artisan migrate:fresh --seed'
alias tinker='php artisan tinker'

alias pest='./vendor/bin/pest'
alias pint='./vendor/bin/pint'
alias composer-update='composer update'
alias composer-install='composer install'

# ---------- Python ----------
alias py='python3'
alias venv='python3 -m venv .venv'
alias act='source .venv/bin/activate'
alias deact='deactivate'

# Django
alias dj='python manage.py'
alias runserver='python manage.py runserver'
alias makemigrations='python manage.py makemigrations'
alias migrate-dj='python manage.py migrate'
alias shell-dj='python manage.py shell'

# FastAPI / Flask
alias uv='uvicorn main:app --reload'
alias flask-run='flask run --debug'

# ---------- Databases ----------
alias mysql='mysql -u root -p'
alias psql='psql postgres'

alias redis-start='redis-server'
alias redis-cli='redis-cli'

alias mongo-start='mongod'
alias mongo-cli='mongosh'

# ---------- Queues ----------
alias celery-worker='celery -A app worker -l info'
alias celery-beat='celery -A app beat -l info'
alias rabbit='sudo systemctl start rabbitmq-server'

alias gundo='git reset --soft HEAD~1'
alias gclean='git clean -fd'
alias gprune='git fetch --prune'
alias gmain='git checkout main || git checkout master'

# --- GENERAL ---
alias cls='clear'
alias ll='ls -lah'
alias myip='curl ifconfig.me'
alias reload='exec zsh'

# --- ALIAS DIC ---
alias aliases='alias | sort'
#