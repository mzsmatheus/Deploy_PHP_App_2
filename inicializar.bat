docker build -t matheusmzs/deploy-backend:1.0 backend/.
docker build -t matheusmzs/deploy-database:1.0 database/.

docker push matheusmzs/deploy-backend:1.0
docker push matheusmzs/deploy-database:1.0

kubectl apply -f ./services.yml
kubectl apply -f ./entregas.yaml
