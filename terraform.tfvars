enabled_modules = {
  public_bigquery_dataset = {
    org_id = "123456",
    project = "test_project",
    region = "us-east1",
    name = "bigquery",
    log_sink_filter = "resource.type=\"bigquery_resource\"  protoPayload.methodName=\"google.iam.v1.IAMPolicy.SetIamPolicy\" AND NOT protoPayload.authenticationInfo.principalEmail"
    function_perms = ["logging.logEntries.create", "bigquery.datasets.update", "bigquery.datasets.get"],
  }
  public_gcs_bucket = {
    org_id = "123456",
    project = "test_project",
    region = "us-east1",
    name = "gcs",
    log_sink_filter = "resource.type=\"gcs_bucket\"  protoPayload.methodName=\"storage.setIamPermissions\" AND NOT protoPayload.authenticationInfo.principalEmail"
    function_perms = ["logging.logEntries.create", "storage.buckets.getIamPolicy", "storage.buckets.setIamPolicy"],
  }

}