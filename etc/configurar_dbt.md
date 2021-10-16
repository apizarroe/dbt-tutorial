#Archivo: configurar_dbt.md  
#Author: Aldo Pizarro  
#Date: 2021-10-13

# CONFIGURACION DEL ENTORNO DE TRABAJO PARA DBT

**PREREQUISITO: Haber creado cuenta Snowflake de Prueba**

1. Instalacion de algunas dependencias en SO:  
    - ***Ubuntu/Debian***  
`sudo apt-get install git libpq-dev python-dev` `python3-pip`  
`sudo apt-get remove python-cffi`  
`sudo pip install --upgrade cffi` 
    - ***CentOS***  
`sudo yum install redhat-rpm-config gcc libffi-devel python-devel openssl-devel`  

1. Se instala virtualenv:  
`python3 -m pip install virtualenv`  

1. Se crea el entorno virtual (Se pude utilizar el ***/home/$USER***)  
`virtualenv <name_virtualenv>`  
*Nota: Este comando genera una carpeta con el nombre asignado al virtualenv*

1. Se activa el entorno virtual  
`. <name_virtualenv>/bin/activate`  
*Para Salir del entorno virtual usar:*  
`deactivate`

1. Se instala dbt mediante pip  
`python3 -m pip install cryptography~=3.4`    
`python3 -m pip install dbt`

1. Obtener la data de Prueba: (Opcional)  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/stripe_payments.csv`  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_orders.csv`  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_customers.csv`

1. Crear la base de datos  
`create database raw;`  
`commit;`  
`use database raw;`

1. Ejecutar la carga de datos a Snowflake  
https://courses.getdbt.com/courses/take/fundamentals/texts/17703453-loading-training-data-into-your-warehouse  
**Sección Snowflake**

1. Ejecutar los siguiente comandos en la ruta raiz  
`dbt init`: Inicializa el Proyecto DBT

1. Generar archivo ***profiles.yml*** en ***/home/$USER/.dbt***, puedes encontrar un template en el repositorio en la carpeta *etc*

1. Modificar archivo ***dbt_project.yml*** en la raiz del Proyecto, cambiando los valores de conexion

1. Ejecutar los siguiente comandos en la ruta raiz  
`dbt debug`: Valida la configuracion del archivo profiles y dbt_project

1. Crear el repositorio en github

1. Para la carga del proyecto a Git, ejecutar lo siguientes comandos  
`git init`  
`git commit -m "Create a dbt project"`  
`git branch -M main`  
`git remote add origin https://github.com/apizarroe/dbt-tutorial.git`  
`git push -u origin main`  
*Nota: Utilizar el repo creado en el paso previo*  

## Referencias:

- Instalacion del dbt-cli:  
https://docs.getdbt.com/dbt-cli/installation  

- Configurando entorno:  
https://docs.getdbt.com/tutorial/setting-up  

- Configuracion de un modelo de ejemplo en dbt:  
https://www.getdbt.com/getting-started-tutorial/#!/model/model.jaffle_shop.stg_orders  

- Configuracion del dbt-cloud:  
https://docs.getdbt.com/docs/dbt-cloud/cloud-overview  

- Referencia de Comando Basicos:  
https://github.com/dbt-labs/jaffle_shop

- Documentacion Adicional del Framwork:  
https://docs.getdbt.com/  
