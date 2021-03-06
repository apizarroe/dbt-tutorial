#Archivo: configuracion_dbt_es.md  
#Autor: Aldo Pizarro  
#Fecha: 2021-10-13

# CONFIGURACION DEL ENTORNO PARA DBT

**PRERREQUISITO: Crear cuenta gratuita de Snowflake**

1. Instalación de algunas dependencias en SO:  
    - ***Ubuntu/Debian***  
`sudo apt-get install git libpq-dev python-dev` `python3-pip`  
`sudo apt-get remove python-cffi`  
`sudo pip install --upgrade cffi` 
    - ***CentOS***  
`sudo yum install redhat-rpm-config gcc libffi-devel python-devel openssl-devel`  

1. Instalar virtualenv:  
`python3 -m pip install virtualenv`  

1. Crear el entorno virtual (Puede utilizar el ***/home/$USER***)  
`virtualenv <name_virtualenv>`  
*Nota: Este comando genera una carpeta con el nombre asignado al virtualenv*  

1. Activar el entorno virtual  
`. <name_virtualenv>/bin/activate`  
*Para Salir del entorno virtual usar:*  
`deactivate`  

1. Instalar dbt mediante pip  
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

1. Ejecutar el siguiente comando en la ruta raiz del proyecto  
`dbt init`: Inicializa el Proyecto DBT  

1. Generar archivo ***profiles.yml*** en ***/home/$USER/.dbt***, puedes encontrar un template en la carpeta *etc*  

1. Modificar archivo ***dbt_project.yml*** en la raiz del Proyecto, cambiando los valores de conexion  

1. Ejecutar el siguiente comando en la ruta raiz  
`dbt debug`: Valida la configuracion del archivo ***profiles.yml*** y ***dbt_project.yml***  

1. Crear el repositorio en github  

1. Para la carga del proyecto a Git, ejecutar lo siguientes comandos  
`git init`  
`git commit -m "Create a dbt project"`  
`git branch -M main`  
`git remote add origin https://github.com/apizarroe/dbt-tutorial.git`  
`git push -u origin main`  
*Nota: Utilizar el repositorio Git creado en el paso previo*  

1. Verificar que el proceso fué exitoso, ejecutar el siguiente comando en la ruta raiz   
`dbt run`: Despliega todo los modelos de prueba en el ambiente Snowflake  
![Objetos Desplegados!](deploy_objects.png "Objetos Desplegados")  

1. Para generar la documentación del Proyecto, ejecutar el siguiente comando en la ruta raiz  
    - `dbt docs generate`: Genera la documentación del proyecto en un website  
    Alternativo: `dbt docs generate --no-compile`  
    - `dbt docs serve`: Se genera un servidor web en el puerto 8000 para la documentación de forma local. La raíz del servidor es la carpeta **target/**  
    Alternativo: `dbt docs serve --port 8001`  

<br />

## Referencias:

- Instalación del dbt-cli:  
https://docs.getdbt.com/dbt-cli/installation  

- Configuración entorno:  
https://docs.getdbt.com/tutorial/setting-up  

- Ejemplo de documentacion de modelo desplegado en dbt:  
https://www.getdbt.com/getting-started-tutorial/#!/model/model.jaffle_shop.stg_orders  

- Configuracion del dbt-cloud:  
https://docs.getdbt.com/docs/dbt-cloud/cloud-overview  

- Como generar documentacion:  
https://docs.getdbt.com/reference/commands/cmd-docs  

- Referencia de Comando Básicos:  
https://github.com/dbt-labs/jaffle_shop  

- Documentación Adicional del Framework:  
https://docs.getdbt.com/  
