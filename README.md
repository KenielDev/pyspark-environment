# Configuração do Ambiente Spark com Delta Lake e Apache Iceberg

Este guia fornecerá instruções detalhadas sobre como configurar um ambiente Spark com Delta Lake e Apache Iceberg, bem como exemplos de uso dessas tecnologias.

## Instalação e Configuração

1. **Instalação do PySpark**: Execute o seguinte comando para instalar o pacote `pyspark`:

   ```bash
   !pip install pyspark
   ```

2. **Configuração do Ambiente Spark**: Utilize o seguinte código para configurar a sessão do Spark com Delta Lake e Apache Iceberg:

   ```python
   from pyspark.sql import SparkSession

   spark = SparkSession.builder \
       .appName("PySpark with Delta Lake and Iceberg") \
       .config("spark.jars.packages", "io.delta:delta-core_2.12:1.1.0,org.apache.iceberg:iceberg-spark3-runtime:0.12.0") \
       .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension") \
       .config("spark.sql.catalog.spark_catalog", "org.apache.iceberg.spark.SparkSessionCatalog") \
       .config("spark.sql.catalog.spark_catalog.type", "hive") \
       .enableHiveSupport() \
       .getOrCreate()
   ```

3. **Montagem do Google Drive (opcional)**: Se estiver utilizando o Google Colab e os dados estiverem armazenados no Google Drive, monte o Google Drive com o seguinte código:

   ```python
   from google.colab import drive
   drive.mount('/content/drive')
   ```

## Teste do Spark

Execute o seguinte código para verificar se o Spark está configurado corretamente:

```python
spark.range(5).toDF("id").show()
```
