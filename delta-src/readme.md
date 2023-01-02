# Install delta

#### 1. Install pyspark.

#### 2. Run the comand to install delta library locally:
```pip install delta-spark==2.1.1```

- reference: https://docs.delta.io/latest/quick-start.html#-python

#### 3. Test the installation:

<pre><code>
import pyspark
from delta import *

builder = pyspark.sql.SparkSession.builder.appName("MyApp") \
    .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension") \
    .config("spark.sql.catalog.spark_catalog", "org.apache.spark.sql.delta.catalog.DeltaCatalog")

spark = configure_spark_with_delta_pip(builder).getOrCreate()
</code></pre>

#### 4. Writing and reading delta format

<pre><code>
data = spark.range(0, 5)
data.show()

# write data in delta format
data.write.format("delta").save("delta-table")

# read delta table
df = spark.read.format("delta").load("delta-table")
df.show()

</code></pre>

#### 5. Updating and time travel

<pre><code>

data = spark.range(5, 10)
data.write.format("delta")\
    .mode("overwrite")\
    .save("delta-table")

print("print the values:")
data.show()

# time travel..
df = spark.read.format("delta")\
    .option("versionAsOf", 0)\
    .load("delta-table")

# printing the table...
df.show()

</code></pre>


#### 6. Understanding Delta Enforcement and Evolution Schema.

- Try to write data for the same location. 


<pre><code>
    df_emp.write.format("delta")\
          .save(table_path)

    df_dep.write.format("delta")\
         .save(table_path2)
</code></pre>

- Read the error message. After that, use the **overwrite mode**

<pre><code>
    df_emp.write.format("delta")\
        .mode("overwrite")\
        .save(table_path)
    
    df_dep.write.format("delta")\
        .mode("overwrite")\
        .save(table_path2)
</code></pre>


- Add the new column on data source:
```StructField("CostCenter", IntegerType(), True)```

- Re-execute the application


- Read the return message. Try add to option **.option("mergeSchema", "true")** e try again:

<pre><code>
    df_emp.write.format("delta")\
        .mode("overwrite")\
        .option("mergeSchema", "true")\
        .save(table_path)
    
    df_dep.write.format("delta")\
        .mode("overwrite")\
        .option("mergeSchema", "true")\
        .save(table_path2)
</code></pre>

- See the results. So, change the column type and reexecute the application:

<pre><code>
StructField("CostCenter", StringType(), True)
</code></pre>

- Try to use the option **.option("overwriteSchema", "true")**

#### 7. Working with upserts

  data2 = [(1, "U", "James", "Ferreira", "Ferreira", "36636", "M", 10000, 2,222, "2022-09-14 13:10:12"),
             (2, "U", "Michael", "Rose", "Ferreira", "40288", "M", 4000, 1, 333, "2022-09-13 13:10:12"),
             (6, "I", "Norma", "Maria", "Santana", "40288", "F", 20000, 1, 444,"2022-09-12 13:10:12"),
             (7, "I", "Erik", "", "", "40288", "2", 50000, 1, "2022-09-15 13:10:12"),
             (1, "U", "James", "Ferreira", "Ferreira", "36636", "M", 10000, 2, 555, "2022-09-15 13:10:12"),
             (1, "U", "James", "Maciel", "Ferreira", "36636", "M", 10000, 2, 666,"2022-09-16 13:10:12")]


#### 8. Application

# install Faker Library

pip install Faker
pip install faker-vehicle
pip install faker_airtravel
pip install faker-credit-score