# Week 1 — App Containerization

## Cast

AEdith Pucila
James Spurin

## Script

https://github.com/omenking/aws-bootcamp-cruddur-2023/blob/week-1/journal/week1.md

## Container registries

dockerhub
oci - open container initiative
ecr - 
quay.io
redhat container registry


jfrog artifactory, nexus is software allowing for docker registry functionality

## Building the container

 $ docker build -t backend-flask:1.0-SNAPSHOT .
 $ docker image ls
REPOSITORY                                    TAG                 IMAGE ID            CREATED              SIZE
backend-flask                                 1.0-SNAPSHOT        e5a3394e5f89        About a minute ago   129MB

$ docker run -e FRONTEND_URL="*" -e BACKEND_URL="*" -d -p 4567:4567 backend-flask:1.0-SNAPSHOT

19:28 $ docker run -e FRONTEND_URL="*" -e BACKEND_URL="*" -d -p 4567:4567 backend-flask:1.0-SNAPSHOT
7fef9eb4b57f2e992a7b6acb4034f152eeb14f66d1f3d3cd087c95b4f189740a
✔ ~/git/aws-bootcamp-cruddur-2023/backend-flask [3-week1-actions|✚ 1…1] 
19:30 $ docker ps
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
    ],
    "replies_count": 1,
    "reposts_count": 0,
    "uuid": "68f126b0-1ceb-4a33-88be-d90fa7109eee"
  },
  {
    "created_at": "2023-02-11T18:44:39.933036+00:00",
    "expires_at": "2023-02-27T18:44:39.933036+00:00",
    "handle": "Worf",
    "likes": 0,
    "message": "I am out of prune juice",
    "replies": [],
    "uuid": "66e12864-8c26-4c3a-9658-95a10f8fea67"
  },
  {
    "created_at": "2023-02-18T17:44:39.933036+00:00",
    "expires_at": "2023-02-19T06:44:39.933036+00:00",
    "handle": "Garek",
    "likes": 0,
    "message": "My dear doctor, I am just simple tailor",
    "replies": [],
    "uuid": "248959df-3079-4947-b847-9e0892d1bab4"
  }
]


### Docker compose

r-click on the docker-compose 
docker-compose -f "docker-compose.yml" up -d --build 


## Homework

Run the docker CMD as ex external script

rush and tag an image to dockerhub

multistage building for a Dockerfile 

Impelment a healthcheck in the V3 Docker compos file

Research best practices of Dockerfile and attempt to implement it in your Dockerfile

Learn how to install Docker on your localmachine and get the same containes running outside of Gitpod/codespaces

Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes
