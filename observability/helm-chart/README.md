# pomodoro-infra-configs
Infra configs for Promodoro Application

## Commands to deploy helm chart

Make sure you are inside helm-chart directory and deploy helm charts in below order.

### Deploy Database

```bash
helm install pomodoro-db db-pomodoro-app -n db-pomodoro --create-namespace
```

### Deploy Report Backend

```bash
helm install pomodoro-report-backend be-report-service -n be-pomodoro --create-namespace
```

### Deploy Backend

```bash
helm install pomodoro-backend be-pomodoro-app -n be-pomodoro --create-namespace
```

### Deploy Frontend

```bash
helm install pomodoro-frontend fe-pomodoro-app -n fe-pomodoro --create-namespace
```

## Commands to delete helm chart

If you no longer need the setup, run the following command to delete it.

### Frontend

```bash
helm delete pomodoro-frontend -n fe-pomodoro
```

### Backend
```bash
helm delete pomodoro-backend -n be-pomodoro
```

### Report Backend
```bash
helm delete pomodoro-report-backend -n be-pomodoro
```

### Database
```bash
helm delete pomodoro-db -n db-pomodoro
```