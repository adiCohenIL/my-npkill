FROM jenkins/jenkins:2.222.1

# handle jenkins plugin
ENV JEN_REF /usr/share/jenkins/ref
COPY jenkins-home/plugins.txt $JEN_REF/
COPY jenkins-home/jenkins-adm-name /run/secrets/jenkins-adm-name
COPY jenkins-home/jenkins-adm-pass /run/secrets/jenkins-adm-pass
RUN \
  ATTEMPTS=3 \
  /usr/local/bin/install-plugins.sh < $JEN_REF/plugins.txt

USER root
#COPY jenkins-home/dsl $JEN_REF/dsl/
COPY jenkins-home/security.groovy  $JEN_REF/init.groovy.d/security.groovy
RUN install -d -o jenkins -g jenkins -m 0770 /var/log/jenkins

USER jenkins

#ENV JAVA_OPTS="-Xmx8192m"
ENV JAVA_OPTS="-Xmx8192m \
		-Dorg.eclipse.jetty.server.Request.maxFormContentSize=100000000 \
		-Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Los_Angeles \
		-Dhudson.diyChunking=false \
		-Djenkins.install.runSetupWizard=false"
ENV JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"


