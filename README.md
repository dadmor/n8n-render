
## 📋 **KROK 1: Przygotuj Supabase**

1. **Idź na:** https://supabase.com
2. **Kliknij:** "Start your project" 
3. **Zaloguj się** przez GitHub
4. **Create New Project:**
   - Name: `n8n-database` 
   - Password: wymyśl hasło
   - Region: **Europe West (Ireland)**
5. **Czekaj 2-3 minuty** na setup

## 📋 **KROK 2: Pobierz connection string**

1. W Supabase dashboard → **Settings** → **Database**
2. Znajdź **"Connection string"** → **URI**
3. **Skopiuj** (będzie wyglądać jak):
```
postgresql://postgres:[YOUR-PASSWORD]@db.xxx.supabase.co:5432/postgres
```

## 📋 **KROK 3: Utwórz repozytorium**

1. **Idź na:** https://github.com
2. **Kliknij:** "New repository"
3. **Nazwa:** `n8n-render`
4. **Public** (może być)
5. **Create repository**

## 📋 **KROK 4: Dodaj pliki do repo**

W GitHub repo kliknij **"creating a new file"** i utwórz:

### **Plik 1: `Dockerfile`**
```dockerfile
FROM n8nio/n8n:latest
EXPOSE 5678
CMD ["n8n"]
```

### **Plik 2: `render.yaml`**
```yaml
services:
  - type: web
    name: n8n-app
    env: docker
    plan: free
    dockerfilePath: ./Dockerfile
    port: 5678
    envVars:
      - key: N8N_PORT
        value: "5678"
      - key: N8N_PROTOCOL
        value: "https"
      - key: DB_TYPE
        value: "postgresdb"
      - key: DB_POSTGRESDB_HOST
        value: "YOUR_SUPABASE_HOST"
      - key: DB_POSTGRESDB_DATABASE
        value: "postgres"
      - key: DB_POSTGRESDB_USER
        value: "postgres"
      - key: DB_POSTGRESDB_PASSWORD
        value: "YOUR_SUPABASE_PASSWORD"
      - key: N8N_ENCRYPTION_KEY
        value: "your-secret-encryption-key-123"
```

**Gdzie jesteś teraz? Masz już Supabase czy zaczynamy od tego?**
