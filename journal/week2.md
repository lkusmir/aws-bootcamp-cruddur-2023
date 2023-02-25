# Week 2 — Distributed Tracing

## Week2 Assignment:

TODO: https://github.com/omenking/aws-bootcamp-cruddur-2023/blob/week-2/journal/week2.md

TODO: https://docs.honeycomb.io/getting-data-in/data-best-practices/

TODO: additional videos for addition assignments

* Instrument Honeycomb for the frontend-application to observe network latency between frontend and backend[HARD]

* Add custom instrumentation to Honeycomb to add more attributes eg. UserId, Add a custom span

Think sth important for instrumentation

* Run custom queries in Honeycomb and save them later eg. Latency by UserID, Recent Traces

Save query by userid or recent tracers
https://ui.honeycomb.io/systemadmin/environments/cruddur/datasets/backend-flask/home

## Week 2 notes

Question for Jessica actually regarding honeycomb and today's class:

With the approach we used in docker compose of setting different service names for frontend and backend(which as far as I understand directs data to  different datasets within honeycomb)will we be able to produce a single trace containing combined latency between them? Can I combine results between datasets or will we have to tweak the approach?
Check it out. - https://docs.honeycomb.io/getting-data-in/data-best-practices/

### Cast

Jessica Kerr - jessitron.com

### Observability 

![honeycomb](./img/17.png)  
*Data visible within the HoneyComb*

[Link to python-honeycomb docs](https://docs.honeycomb.io/getting-data-in/opentelemetry/python/)

![honeycomb.error.analysis](./img/18.png)  
*GiveMeError analysis within the HoneyComb*

![honeycomb.mock.results](./img/19.png)  
*Mocked Trace*

![heatmap.of.duration](./img/20.png)  
*HeatMap of duration*

[honeycomb-whoami](https://honeycomb-whoami.glitch.com)



