protoc -odata.pb wfcmessage.proto
g++ -o convert convert.cpp
./convert
mv pbdata.h ../../../ios-workspace/mars/mars/proto/src/Proto/
rm convert data.pb
protoc --java_out=./ wfcmessage.proto
mv ./cn/wildfirechat/proto/WFCMessage.java ../../client/src/main/java/cn/wildfirechat/proto/
