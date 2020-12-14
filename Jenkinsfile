#!/usr/bin/env groovy

import static uk.gov.landregistry.jenkins.pipeline.ClosureUtils.cucumberRubyPipelineConfig

cucumberRubyPipeline cucumberRubyPipelineConfig {
  environmentFile './env-openshift.sh'
  defaultNamespace 'skeletonsxl'
  rubyVersion '2.6'
  slackChannel 'C1LTTTTLZ'
}
