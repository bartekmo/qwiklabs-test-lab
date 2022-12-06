# Demo lab

This lab tests capabilities of qwiklabs.

## Activity tracking
Check the activity tracking below. It tests if a VPC named "test" is present. Including HTML-style tag in a markdown file looks weird, but it works!

<ql-activity-tracking step=1>
This inline message is set in the instructions file.
</ql-activity-tracking>

## Testing formatting

This is a basic code block:

```
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

This is a shell code block

```shell
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

This is a shell output block

```bash output
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

This is a copy of example block (javascript)

```javascript
console.log('hello world!');
```

How about terraform?

```terraform
resource "google_compute_network" "test" {
  name = "test-vpc"
  auto_create_subnetworks = false
}
```
