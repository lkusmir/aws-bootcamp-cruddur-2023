// tracing.js
// Load Opentelemetry packages for downstream as needed
// import opentelemetry from "@opentelemetry/api";
// import { WebTracerProvider } from "@opentelemetry/web";
// import {
//   SimpleSpanProcessor,
//   ConsoleSpanExporter, // Just for debugging
// } from "@opentelemetry/tracing";

// import { CollectorTraceExporter } from "@opentelemetry/exporter-collector";

// // Load Plugins and anything else you will need in your app and configure.
// import { DocumentLoad } from "@opentelemetry/plugin-document-load";
// import { ZoneContextManager } from "@opentelemetry/context-zone";
'use strict';

const { HoneycombSDK } = require('@honeycombio/opentelemetry-node');
const {
  getNodeAutoInstrumentations,
} = require('@opentelemetry/auto-instrumentations-node');

// uses HONEYCOMB_API_KEY and OTEL_SERVICE_NAME environment variables
const sdk = new HoneycombSDK({
  instrumentations: [getNodeAutoInstrumentations()]
});

sdk.start()
