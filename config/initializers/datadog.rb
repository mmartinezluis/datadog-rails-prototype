Datadog.configure do |c|
  # This will activate auto-instrumentation for Rails
  c.tracing.instrument :rails, {'analytics_enabled': true, 'service_name': 'fullstack-app'}
  # Make sure requests are also instrumented
  c.tracing.instrument :http, {'analytics_enabled': true, 'service_name': 'fullstack-app'}
end


#   c.use :rails, {'analytics_enabled': true, 'service_name': 'store-frontend', 'cache_service': 'store-frontend-cache', 'database_service': 'store-frontend-sqlite'}