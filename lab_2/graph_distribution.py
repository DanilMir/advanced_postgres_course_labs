import psycopg2
import matplotlib.pyplot as plt
import numpy as np


conn = psycopg2.connect(database="lab_2", user="postgres", password="password", host="localhost", port="5432")

tables = ["child_table_1", "child_table_2", "child_table_3", "child_table_4", "child_table_5", "child_table_6", "child_table_7", "child_table_8", "child_table_9", "child_table_10"]

counts = []
for table in tables:
    cursor = conn.cursor()
    cursor.execute(f"SELECT COUNT(*) FROM {table}")
    count = cursor.fetchone()[0]
    counts.append(count)
    

fig, ax = plt.subplots()
x_pos = np.arange(len(tables))
ax.bar(x_pos, counts, align='center')
ax.set_xticks(x_pos)
ax.set_xticklabels(tables)
ax.set_ylabel('Data Count')
ax.set_title('Distribution of Data Count for Multiple Tables')
plt.show()

# Close the database connection
conn.close()



