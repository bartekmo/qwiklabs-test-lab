# Test lab

This lab tests capabilities of qwiklabs. Compare with source at (https://github.com/bartekmo/qwiklabs-test-lab)[https://github.com/bartekmo/qwiklabs-test-lab]


## Activity tracking
Check the activity tracking below. It tests if a VPC named "test" is present. Including HTML-style tag in a markdown file looks weird, but it works!

<ql-activity-tracking step=1>
This inline message is set in the instructions file.
</ql-activity-tracking>

The code itself is defined in **Activity Tracking** section of lab authoring, eg.:

```ruby
# method description
def step_i_check(handles:, maximum_score:, resources:)
  ret_hash = { score: 0, student_message: "fail" }
  compute = handles['project_0.ComputeV1']
  vpcs = compute.list_networks() &. items
  vpcs.each do |vpc|
    if "test" == vpc.name
      ret_hash = { score: maximum_score, student_message: "test"}
    end
  end

  return ret_hash
end
```

## Testing formatting

This is how you format a basic code block in markdown:

```
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

Some language code block attributes work: This is javascript:

```javascript
console.log('hello world!');
```

Experimented with "shell" but to no avail.
This is a shell code block

```shell
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

This is a shell output block

```bash output
gcloud compute images show --project fortigcp-project-001 | grep fortigcp
```

How about terraform?

```terraform
resource "google_compute_network" "test" {
  name = "test-vpc"
  auto_create_subnetworks = false
}
```
