FROM countantsteam/mysql-to-bq:v1

ENTRYPOINT ["countants_services.sh"]

EXPOSE 80
EXPOSE 8080
EXPOSE 8081


RUN ["/bin/bash"]