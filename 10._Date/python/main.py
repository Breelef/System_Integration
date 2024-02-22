from datetime import datetime

print(datetime)
#Lokal tid
current_time = datetime.now()
print(current_time)
#Format the time
print(datetime.now().strftime('%Y-%m-%d %H:%M:%S'))

