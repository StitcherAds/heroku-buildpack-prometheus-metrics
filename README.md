# heroku-buildpack-prometheus-metrics

Build Pack for prometheus metrics

### Software Versions

| **Software** | **Version** |
|------|------|
|   [statsd_exporter](https://github.com/prometheus/statsd_exporter)   |  `v0.23.0`    |
|   [prometheus](https://github.com/prometheus/prometheus)   |  `v2.37.5`    |

### Installing the buildpack

```bash
# Add the buildpack to your app
heroku buildpacks:set https://github.com/StitcherAds/heroku-buildpack-prometheus-metrics.git -a myapp

# To install the buildpack on your app you need to deploy
git commit --allow-empty -m "Deploying to Heroku"
git push heroku master
```

### Heroku Config Vars

| **CVAR** | **Description** |
|------|------|
|  GRAFANA_CLOUD_USERNAME    |  Username assigned by Grafana Cloud    |
|   GRAFANA_CLOUD_API_KEY   |   Secret API key   |
|   GRAFANA_CLOUD_JOBNAME   |    Jobname for your metrics  |

More to come

## Set statsd exporter version

- bash script for starting statsd exporter and prometheus

### Documentation

[Heroku Buildpacks](https://devcenter.heroku.com/articles/buildpacks)

[Heroku Buildpack API](https://devcenter.heroku.com/articles/buildpack-api)
