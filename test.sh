python --version

pip freeze | grep betterproto

pip freeze | grep protoc-wheel-0

echo
which protoc
protoc --version

mkdir /app/output

echo
echo Compiling ...
protoc --proto_path=/app/proto --python_betterproto_out=/app/output /app/proto/another.proto
echo DONE