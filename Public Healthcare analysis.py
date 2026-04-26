# %%
from unittest.mock import inplace

import pandas as pd
# %%
f=pd.read_csv(r"C:\Users\Lovisha\Downloads\public_health_surveillance_dataset.csv")
# %%
f.columns=f.columns.str.lower().str.strip().str.replace(" ", "_")
f.fillna({
    'medical_history': "Unknown",
    'reported_symptoms': "Unknown",
    'diagnosis': "Unknown"
}, inplace=True)
date_cols = ['date_of_onset', 'date_of_data_collection', 'vaccination_campaign_dates']
for col in date_cols:
     f[col] = pd.to_datetime(f[col], errors='coerce')
f.drop_duplicates(inplace=True)
# %%
f
# %%
f.duplicated().sum()
# %%
f['age_group']=pd.cut(f['age'],
                      bins=[0, 18, 40, 60, 130],
                      labels=["child", "adult", "middle_aged_adult", "senior"]
                      )
# %%
immunity_mapping={
    'low':2, 'medium':1, 'high':0
}
f['immunity_level']=f['immunity_level'].str.lower().str.strip().str.replace(" ", "_")
f['immunity_score']=f['immunity_level'].map(immunity_mapping)
# %%
f.head()
# %%
f['risk_score'] = (
    2 * f['chronic_conditions'] +
    2 * (1 - f['vaccination_status']) +
    1 * f['immunity_score']
)
# %%
f.head()
# %%
f['onset_year'] = f['date_of_onset'].dt.year
f['onset_month_name'] = f['date_of_onset'].dt.month_name()
f.head()
# %%
f.corr(numeric_only=True)
f
# %%
f.to_csv("cleaned_health_data.csv", index=False)
# %%
pip install pandas sqlalchemy pymysql
# %%
import pandas as pd
from sqlalchemy import create_engine

# Step 1: Load your CSV file
df = pd.read_csv(r"C:\Users\Lovisha\OneDrive\Documents\data\cleaned_health_data.csv")

# Optional: Clean column names (VERY IMPORTANT)
df.columns = df.columns.str.strip().str.lower().str.replace(" ", "_")

# Step 2: Create connection to MySQL
# Format: mysql+pymysql://username:password@host/database

engine = create_engine("mysql+pymysql://root:Naisha%402025@localhost/healthcare_db")

# Step 3: Upload to MySQL
df.to_sql(
    name="public_health_data",   # table name in SQL
    con=engine,
    if_exists="replace",        # replace if table exists
    index=False
)

print("Data successfully imported into MySQL!")