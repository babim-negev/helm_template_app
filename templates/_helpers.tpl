{{- define "java-docker-chart.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "java-docker-chart.fullname" -}}
{{- printf "%s-%s" (include "java-docker-chart.name" .) .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
