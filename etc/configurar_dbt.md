#Author: Aldo Pizarro

#Date: 2021-10-13

# CONFIGURACION DEL ENTORNO DE TRABAJO PARA DBT

1. Se instala virtualenv:(https://docs.getdbt.com/dbt-cli/installation)  
`python3 -m pip install virtualenv`

2. Se crea el entorno virtual (Se pude utilizar el ***/home/$USER***)  
`virtualenv <name_virtualenv>`  
*Nota: Este comando genera una carpeta con el nombre asignado al virtualenv*

3. Se activa el entorno virtual  
`. <name_virtualenv>/bin/activate`

4. Salir del entorno virtual  
`deactivate`

5. Obtener la data de Prueba: (Opcional)  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/stripe_payments.csv`  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_orders.csv`  
`wget http://dbt-tutorial-public.s3-us-west-2.amazonaws.com/jaffle_shop_customers.csv`

6. Crear la base de datos  
`create database raw;`  
`commit;`  
`use database raw;`

7. Ejecutar la carga de datos a Snowflake  
https://courses.getdbt.com/courses/take/fundamentals/texts/17703453-loading-training-data-into-your-warehouse  
**Sección Snowflake**

8. Crear el repositorio en github y Clonarlo.

9. Ejecutar los siguiente comandos en la ruta raiz  
`dbt init`: Inicializa el Proyecto DBT

10. Generar archivo ***profiles.yml*** en /home/$USER/.dbt

11. Modificar archivo ***dbt_project.yml*** en la raiz del Proyecto, cambiando los valores de conexion

12. Ejecutar los siguiente comandos en la ruta raiz  
`dbt debug`: Valida la configuracion del archivo profiles y dbt_project
