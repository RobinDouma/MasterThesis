from selenium import webdriver
from bs4 import BeautifulSoup as bs
import pandas as pd
import requests
import os

url = "https://www.ah.nl/allerhande/recept/R-R1195608/pittige-tonijntosti-s-met-brie-en-courgette"

os.chmod("C:\\Users\\s152191\\chromedriver_win32", 755)
driver = webdriver.Chrome(executable_path="C:\\Users\\s152191\\chromedriver_win32\\chromedriver.exe")
driver.get(url)

ingredients = []

content = driver.page_source
soup = bs(content, features="lxml")
#print(soup.prettify())
for p in soup.find_all('p', class_='typography_root__3N25D typography_variant-paragraph__377x0 typography_hasMargin__mvyxk recipe-ingredients-list_name__ZFxE7'):
    ingredient = p.get_text()
    ingredients.append(ingredient)
print(ingredients)

recipe = soup.find('head').get_text()
print(recipe)
df = pd.DataFrame({'Recipe': recipes, 'Type': types, 'Ingredients': ingredients})
df.to_csv('recipe_all.csv', index=False, encoding='utf-8')
