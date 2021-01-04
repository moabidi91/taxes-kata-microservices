# Taxes Microservices Application

About 
------

Taxes project is a micro-services application based on two submodules:
- taxes-backend : a spring boot rest api implementing Taxes story business 
- taxes-ui : front side application for Taxes project. /!\ NOT YET IMPLEMENTED  /!\ :(


How To ?
------
Start by :

 1- git clone https://github.com/moabidi91/taxes-kata-microservices.git
 
 2- Then just type :
 ```bash
  deploy.sh
  ```
  Please be advised that backend tests are ran before starting application.

Api Docs and Manual tests:
------
  ```bash
  http://localhost:8080/swagger-ui.html
  http://localhost:8080/v2/api-docs
  ```
Please use Postman as a client to test backend application using below url :
```bash
http://localhost:8080/taxesApi/generateBill
```
#Input Example :
1- INPUT_1
```bash
 "* 2 book at 12.49€\n* 1 musical CD at 14.99€\n* 3 chocolate bar at 0.85€"
 ```

2- INPUT_2
```bash
"* 2 chocolate box imported at 10€\n* 3 perfume bottle imported at 47.50€\n* 2 perfume bottle imported at 27.99€\n* 1 perfume bottle at 18.99€\n* 3 migraine pill box at 9.75€\n* 2 chocolate bar imported at 11.25€" 
 ```
3- INPUT_3
```bash
"* 2 perfume bottle imported at 27.99€\n* 1 perfume bottle at 18.99€\n* 3 migraine pill box at 9.75€\n* 2 chocolate bar imported at 11.25€" 
 ```
