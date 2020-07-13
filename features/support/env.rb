# frozen_string_literal: true

# ENV RULES
# 1. No URL domain or username/ password should be anywhere but this env.rb file
# The environment variable should be set in either:
# a. Jenkins export command
# b. Dockerfile that sets the container parameters
# c. export commands within the run_tests.sh file.
# Additional shell scripts could be added for other test environments
# where you wish to run the tests from your PC

class Env
  def self.flask_skeletonxl_api_url
    (ENV['FLASK_SKELETONXL_API_URL'] || 'http://flask-skeletonxl-api')
  end
  def self.flask_skeletonxl_ui_url
    (ENV['FLASK_SKELETONXL_UI_URL'] || 'http://flask-skeletonxl-ui')
  end
  def self.kombu_skeletonxl_client_url
    (ENV['KOMBU_SKELETONXL_CLIENT_URL'] || 'http://kombu-skeletonxl-client')
  end
  def self.sb_jaxrs_skeletonxl_api_url
    (ENV['SPRINGBOOT_JAXRS_SKELETONXL_API_URL'] || 'http://springboot-jaxrs-skeletonxl-api')
  end
  def self.sb_mvc_skeletonxl_api_url
    (ENV['SPRINGBOOT_MVC_SKELETONXL_API_URL'] || 'http://springboot-mvc-skeletonxl-api')
  end
end
