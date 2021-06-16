module knative.dev/eventing-kafka

go 1.16

require (
	github.com/Azure/azure-event-hubs-go/v3 v3.3.2
	github.com/Azure/azure-sdk-for-go v47.1.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.11.10 // indirect
	github.com/Azure/go-autorest/autorest/to v0.4.0 // indirect
	github.com/Azure/go-autorest/autorest/validation v0.3.0 // indirect
	github.com/Shopify/sarama v1.29.0
	github.com/cloudevents/sdk-go/protocol/kafka_sarama/v2 v2.4.1
	github.com/cloudevents/sdk-go/v2 v2.4.1
	github.com/davecgh/go-spew v1.1.1
	github.com/ghodss/yaml v1.0.0
	github.com/google/go-cmp v0.5.6
	github.com/google/gofuzz v1.2.0
	github.com/google/uuid v1.2.0
	github.com/influxdata/tdigest v0.0.1 // indirect
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/mitchellh/mapstructure v1.3.3 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475
	github.com/slinkydeveloper/loadastic v0.0.0-20201218203601-5c69eea3b7d8
	github.com/stretchr/testify v1.7.0
	github.com/xdg/scram v1.0.3
	go.opencensus.io v0.23.0
	go.uber.org/atomic v1.8.0
	go.uber.org/multierr v1.6.0
	go.uber.org/zap v1.17.0
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	golang.org/x/time v0.0.0-20210220033141-f8bda1e9f3ba
	google.golang.org/protobuf v1.26.0
	k8s.io/api v0.20.7
	k8s.io/apimachinery v0.20.7
	k8s.io/client-go v0.20.7
	k8s.io/utils v0.0.0-20201110183641-67b214c5f920
	knative.dev/control-protocol v0.0.0-20210608143842-1c4b3e61cbc0
	knative.dev/eventing v0.23.1-0.20210615213121-4eb1738b5e35
	knative.dev/hack v0.0.0-20210614141220-66ab1a098940
	knative.dev/networking v0.0.0-20210615114921-e291c8011a20
	knative.dev/pkg v0.0.0-20210615143321-77ff8d962c73
	knative.dev/reconciler-test v0.0.0-20210603210445-0071c48281c7
)
