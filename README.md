# SiimpleProject
Simple JSP/Servlet Web Project

1. Create Database
``` 
CREATE USER simple_project_1 identified by 1234;
```

```
grant connect, resource, dba to simple_project_1;
```

```
CREATE TABLE S_USER(
    ID VARCHAR(20),
    PW VARCHAR(20),
    NAME VARCHAR(8),
    ADDRESS VARCHAR(20),
    PRIMARY KEY(ID)
);
```
