{{/*
Create a default fully qualified app name.
We truncate at 63 characters because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "flask-app-chart.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default name for the chart.
*/}}
{{- define "flask-app-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}
