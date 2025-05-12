docker build -t site-img .
docker run -dtp 81:80 --name site-cont site-img
docker exec -it site-cont bash
