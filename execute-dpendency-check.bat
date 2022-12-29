curl -u admin:s6rgeply "http://192.168.15.29:8081/repository/maven-public/org/owasp/dependencycheck/logback-core/7.3.2/logback-core-7.3.2-release.zip" > dependencycheck.zip
unzip ./dependencycheck.zip
mkdir ./dependency-check/bin/report
./dependency-check/bin/dependency-check.sh --out /dependency-check/bin/report --format JSON --scan ./target
rm -rf dependency-check
rm -rf dependencycheck.zip