/*
Copyright 2019 The Knative Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package main

import (
	"context"
	"os"

	"knative.dev/pkg/configmap"
	"knative.dev/pkg/injection"
	"knative.dev/pkg/injection/sharedmain"
	"knative.dev/pkg/signals"

	consolidatedmessaging "knative.dev/eventing-kafka/pkg/channel/consolidated/apis/messaging"
	controller "knative.dev/eventing-kafka/pkg/channel/consolidated/reconciler/dispatcher"
	"knative.dev/eventing-kafka/pkg/common/configmaploader"
)

const component = "kafkachannel-dispatcher"

func init() {
	consolidatedmessaging.RegisterConsolidatedKafkaChannelConditionSet()
}

func main() {
	ctx := signals.NewContext()
	ns := os.Getenv("NAMESPACE")
	if ns != "" {
		ctx = injection.WithNamespaceScope(ctx, ns)
	}

	ctx = context.WithValue(ctx, configmaploader.Key{}, configmap.Load)
	sharedmain.MainWithContext(ctx, component, controller.NewController)
}
