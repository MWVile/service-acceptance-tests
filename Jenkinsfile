#!/usr/bin/env groovy

import static uk.gov.landregistry.jenkins.pipeline.ClosureUtils.cucumberRubyPipelineConfig

cucumberRubyPipeline cucumberRubyPipelineConfig {
  environmentFile './env-openshift.sh'
  defaultNamespace 'skeletonsxl'
  rubyVersion '3.0'
  slackChannel 'C1LTTTTLZ'
}
