from faker import Faker
from faker_vehicle import VehicleProvider
from faker_airtravel import AirTravelProvider
from faker_credit_score import CreditScore
from pyspark.sql import SparkSession, Row

spark = SparkSession.builder.appName('Spark App').getOrCreate()

# Setup Faker
faker = Faker()
faker.add_provider(CreditScore)
faker.add_provider(VehicleProvider)
faker.add_provider(AirTravelProvider)

data = []

for i in range(1000):
    nome         = faker.name()
    customer_id  = faker.random_int()
    sexo         = faker.lexify(text='?', letters='MF')
    endereco     = faker.address() 
    telefone     = faker.phone_number() 
    email        = faker.safe_email() 
    foto         = faker.image_url() 
    nascimento   = faker.date_of_birth() 
    profissao    = faker.job() 
    provedor     = faker.credit_score_provider() 
    credit_score = faker.credit_score()
    ano_modelo   = faker.vehicle_year_make_model()
    modelo       = faker.vehicle_make_model() 
    fabricante   = faker.vehicle_make()
    ano_veiculo  = faker.vehicle_year() 
    categoria    = faker.vehicle_category() 
    aeroporto    = faker.airport_name()
    linha_aerea  = faker.airline()
    cod_iata     = faker.airport_iata()
    data.append([customer_id, nome, sexo, endereco, telefone, email, foto, nascimento, profissao])

print (data)
cols=['customer_id', 'nome', 'sexo', 'endereco', 'telefone', 'email', 'foto', 'nascimento', 'profissao']

df = spark.createDataFrame(data, schema=cols)
print(df.show())

print(faker.salari())