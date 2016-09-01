RC_FILE="$HOME/.zshrc"
echo "setting up in $RC_FILE for JAVA"

echo "please copy jmeter to $HOME/workspace/tools/jemter"
echo "then you can use jmeter to start in terminal via jmeter"
echo "alias jmeter=\"sh $HOME/workspace/tools/jmeter/bin/jmeter.sh\"" >>$RC_FILE

echo "please copy h2 to $HOME/workspace/tools/h2"
echo "then you can use h2 to start in terminal via h2"
echo "alias h2=\"java -jar $HOME/workspace/tools/h2/bin/h2-1.4.190.jar\"" >>$RC_FILE
echo "alias deploy="mvn clean package deploy -Dmaven.test.skip=true"" >>$RC_FILE

# setting maven
echo "please copy maven to $HOME/workspace/tools/maven"
echo "then you can use maven to start in terminal via maven"
echo "export M2_HOME=$HOME/workspace/tools/maven" >>$RC_FILE
echo "export PATH=\"$PATH:$M2_HOME/bin\"" >>$RC_FILE
echo "export PATH=\"$PATH:$JAVA_HOME/bin\"" >>$RC_FILE
