from dotenv import dotenv_values, load_dotenv

#Example 1
envoriment_variables = dotenv_values()

print(envoriment_variables)
print(envoriment_variables["SOMETHING"])

#Example 2
import os

load_dotenv()
print(os.getenv("SOMETHING"))



