def annotateEventToGrafana(event) {
    withCredentials([[$class: 'StringBinding', credentialsId: 'grafana_token', variable: 'grafanaToken']]) {
        grafanaToken = "${grafanaToken}"

        if (event == 'deploy') {
            listener_type = "Test"
        } else {
            listener_type = "Live"
        }

        cat << EOF > EventAnnotation.txt
{
  "text": "${event.capitalize()} commit ${COMMIT_ID} to '${STACKER_APP}' ${REGION} ${ENVIRONMENT} ${listener_type} Listener\\n\\n
    <a href=\\"${GITHUB_URL}/commit/${LiveColorCommitId}\\">LiveListener: (${LiveColor}) (${LiveColorCommitId})</a>\\n
    <a href=\\"${GITHUB_URL}/commit/${COMMIT_ID}\\">TestListener: (${testColor}) (${COMMIT_ID})</a>\\n
    <a href=\\"${BUILD_URL}/console\\">Jenkins #${BUILD_NUMBER} (DEPLOY Logs)</a>",
  "tags": [ "${event}", "env:${ENVIRONMENT}", "application:${STACKER_APP}", "commit:${COMMIT_ID}" ]
}
EOF
        curl -s -X POST http://15.206.125.190:3000/api/annotations \
            -H "Content-Type: application/json" \
            -H "Authorization: Bearer ${grafanaToken}" \
            --data @EventAnnotation.txt
        
        """
    }
}
