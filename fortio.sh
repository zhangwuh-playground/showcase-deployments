export FORTIO_POD=$(kubectl -n zhangwuh get pods -l app=fortio -o 'jsonpath={.items[0].metadata.name}')
kubectl exec "$FORTIO_POD" -n zhangwuh -c fortio -- /usr/bin/fortio load -c $1 -qps 0 -n $2 -loglevel Warning http://httpbin:8000/get
