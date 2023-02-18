# Week 1 — App Containerization

## Home assignment

1. Run the docker CMD as en external script.
 
```bash
docker run backend-flask:1.0-SNAPSHOT /shell /script
```

2. Push and tag an image to dockerhub

TODO: https://docs.docker.com/docker-hub/repos/

Shall we go with quay.io too (https://docs.quay.io/solution/getting-started.html)?

3. Multistage building for a Dockerfile 

4. Impelement a healthcheck in the V3 Docker compos file

5. Research best practices of Dockerfile and attempt to implement it in your Dockerfile

* commands kolejnosc matters
* dont' do root - rootless is the new black
* use explicit versions
* keep it small


6. Learn how to install Docker on your localmachine and get the same containes running outside of Gitpod/codespaces

    [Installation procedure](https://docs.docker.com/engine/install/debian/) on my local machine.

    Building and running the application locally:
    ```bash
    $ pwd
    /home/lkusmir/git/aws-bootcamp-cruddur-2023/backend-flask

    $ docker build -t backend-flask:1.0-SNAPSHOT .
    Sending build context to Docker daemon  33.79kB
    (...)
    Successfully built 1cd618986456
    Successfully tagged backend-flask:1.0-SNAPSHOT

    $ pwd
    /home/lkusmir/git/aws-bootcamp-cruddur-2023/frontend-react-js

    $ npm i
    added 1470 packages from 685 contributors and audited 1471 packages in 100.818s
    (...)

    $ docker build -t frontend-react-js:1.0-SNAPSHOT .
    Successfully built aa76de3305c7
    Successfully tagged frontend-react-js:1.0-SNAPSHOT

    $ docker image list
    REPOSITORY                                    TAG                 IMAGE ID            CREATED             SIZE
    frontend-react-js                             1.0-SNAPSHOT        aa76de3305c7        32 seconds ago      1.2GB
    backend-flask                                 1.0-SNAPSHOT        1cd618986456        14 minutes ago      129MB

    $ docker run -e FRONTEND_URL="*" -e BACKEND_URL="*" -d -p 4567:4567 backend-flask:1.0-SNAPSHOT
    87ea942d63221c13e9a49ee36840a9dcdbddacd25991a63b1382f96e7a19601b
    $ docker run -e FRONTEND_URL="*" -e BACKEND_URL="*" -d -p 3000:3000 frontend-react-js:1.0-SNAPSHOT 
    c9e70930ccff4b1b32193037d1f122d402f2de86f7029a2b38dc36c47d3e7593
    ```

    ![local.backend.live](./img/11.png)
    *Backend running locally*

    ![local.app.live](./img/10.png)
    *Application running locally.*

    TODO: Second approach with docker-compose ? 

7. Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes

## Week1 -  Notes from the meetup

### Cast

Aedith Pucila  
James Spurin

### Script

We were following the [procedure](https://github.com/omenking/aws-bootcamp-cruddur-2023/blob/week-1/journal/week1.md).

Worth reading:
* [Docker compose](https://docs.docker.com/compose/gettingstarted/)
* [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)

### Notes

#### Building frontend

```bash
$ docker build -t backend-flask:1.0-SNAPSHOT .

$ docker image ls
REPOSITORY                                    TAG                 IMAGE ID            CREATED              SIZE
backend-flask                                 1.0-SNAPSHOT        e5a3394e5f89        About a minute ago   129MB

$ docker run -e FRONTEND_URL="*" -e BACKEND_URL="*" -d -p 4567:4567 backend-flask:1.0-SNAPSHOT
7fef9eb4b57f2e992a7b6acb4034f152eeb14f66d1f3d3cd087c95b4f189740a
✔ ~/git/aws-bootcamp-cruddur-2023/backend-flask [3-week1-actions|✚ 1…1] 

$ docker ps
CONTAINER ID        IMAGE                        COMMAND                  CREATED             STATUS              PORTS                    NAMES
7fef9eb4b57f        backend-flask:1.0-SNAPSHOT   "python3 -m flask ru…"   10 minutes ago      Up 10 minutes       0.0.0.0:4567->4567/tcp   flamboyant_pike

$ curl 127.0.0.1:4567/api/activities/home
[
  {
    "created_at": "2023-02-16T18:44:39.933036+00:00",
    "expires_at": "2023-02-23T18:44:39.933036+00:00",
    "handle": "Andrew Brown",
    "likes_count": 5,
    "message": "Cloud is fun!",
    "replies": [
      {
        "created_at": "2023-02-16T18:44:39.933036+00:00",
        "handle": "Worf",
        "likes_count": 0,
        "message": "This post has no honor!",
        "replies_count": 0,
        "reply_to_activity_uuid": "68f126b0-1ceb-4a33-88be-d90fa7109eee",
        "reposts_count": 0,
        "uuid": "26e12864-1c26-5c3a-9658-97a10f8fea67"
      }
(...)
```

#### Building the app - docker compose

**HINT:** Remeber to `npm -i` in the frontend dir before docker compose. 

**HINT:** R-click on the codker-compose.yml for an action.

```bash
docker-compose -f "docker-compose.yml" up -d --build 
```

![app_running_on_gitpod](./img/09.png)
*Application running on GitPod*

```bash
$ curl https://3000-lkusmir-awsbootcampcrud-dtlch9mjm9e.ws-eu87.gitpod.io/
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
(...)
  </body>
</html>
```

