from bs4 import BeautifulSoup
from selenium import webdriver
from openpyxl import Workbook

driver = webdriver.Chrome('./chromedriver')

url = "https://search.naver.com/search.naver?where=news&query=%EC%B6%94%EC%84%9D&sm=tab_tmr&nso=so:r,p:all,a:all&sort=0"

driver.get(url)
req = driver.page_source
soup = BeautifulSoup(req, 'html.parser')
#sp_nws1 > div.news_wrap.api_ani_send > div > a
#main_pack > section.sc_new.sp_nnews._prs_nws > div > div.group_news > ul
articles = soup.select('#main_pack > section.sc_new.sp_nnews._prs_nws > div > div.group_news > ul > li')

wb = Workbook()
ws1 = wb.active
ws1.title = "articles"

for article in articles:
    a_tag = article.select_one("div.news_wrap.api_ani_send > div.news_area > a")
    title = a_tag.text
    url = a_tag['href']
    #sp_nws1 > div.news_wrap.api_ani_send > div > div.news_info > div.info_group > a.info.press
    comp = article.select_one('div.news_wrap.api_ani_send > div > div.news_info > div.info_group > a').text.split(' ')[0].replace('언론사','')
    # print(title, url, comp)
    ws1.append([title, url, comp])


wb.save(filename='articles.xlsx')

driver.quit()