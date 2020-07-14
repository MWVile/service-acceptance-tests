#!/usr/bin/env groovy
def library = library identifier: 'jenkins-pipelines@feature/Cucumber-Ruby-test-pipeline', retriever: modernSCM(
        [$class: 'GitSCMSource',
         remote: 'http://192.168.249.38/common-code/jenkins-pipelines.git'])

cucumberRubyPipeline library.uk.gov.landregistry.jenkins.pipeline.ClosureUtils.cucumberRubyPipelineConfig {
  environmentFile './env-openshift.sh'
  defaultNamespace 'skeletonsxl'
}
