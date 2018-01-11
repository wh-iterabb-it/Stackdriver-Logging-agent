# Stackdriver Logging agent

## Collecting Docker Log Files with Fluentd and sending to GCP.

This directory contains the source files needed to make a Docker image
that collects Docker container log files using [Fluentd][fluentd]
and sends them to [Stackdriver Logging][stackdriverLogging] and [Sumologic][sumologic].

This image is designed to be used as part of the [Kubernetes][kubernetes]
cluster bring up process.

## Usage

In order to configure fluentd image, we should mount a directory with `.conf`
files to `/etc/fluent/config.d` or add files to that directory by building
a new image on top. All `.conf` files in the `/etc/fluent/config.d` directory
will be included to the final fluentd configuration. For more details about
fluentd configuration, read the [Fluentd documentation][fluentdDocs].

Command line arguments to the fluentd executable are passed via environment
variable `FLUENTD_ARGS`.


[fluentd]: http://www.fluentd.org
[kubernetes]: https://github.com/kubernetes/kubernetes
[stackdriverLogging]: https://cloud.google.com/logging
[fluentdDocs]: http://docs.fluentd.org/articles/config-file
[sumologic-cloud-syslog]: https://github.com/acquia/fluent-plugin-sumologic-cloud-syslog
[sumologic]: https://www.sumologic.com
