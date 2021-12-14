{{- define "chart.labels" }} 
app: dca-app1
type: microservice1 
{{- end }}

{{- define "chart.labels2" }}
app: dca-app2
type: microservice2
{{- end }}

{{- define "chart.podlabels" }}
app: dca-app1
type: microservice1
version: v1.0
dos-deny-list: enabled
method: http
internet: enabled
identity: dca-app1
{{- end }}

{{- define "chart.podlabels2" }}
app: dca-app2
type: microservice2
version: v1.0
dos-deny-list: enabled
method: http
internet: enabled
identity: dca-app2
{{- end }}

{{- define "chart.annotations"}}
  admiral.io/env: stage
  sidecar.istio.io/inject: "true"
{{- end }}