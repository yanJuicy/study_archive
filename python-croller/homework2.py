from bs4 import BeautifulSoup
from selenium import webdriver
from openpyxl import Workbook

import email
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
from email import encoders

def email_send():
    # 보내는 사람 정보
    me = ""
    my_password = ""

    # 로그인하기
    s = smtplib.SMTP_SSL('smtp.gmail.com')
    s.login(me, my_password)

    # 받는 사람 정보
    email_list = [""]

    # 메일 기본 정보 설정
    for you in email_list:
        msg = MIMEMultipart('alternative')
        msg['Subject'] = "TestEmail"
        msg['From'] = me
        msg['To'] = you

        # 메일 내용 쓰기
        content = "This is test"
        part2 = MIMEText(content, 'plain')
        msg.attach(part2)

        part = MIMEBase('application', "octet-stream")
        with open("articles.xlsx", 'rb') as file:
            part.set_payload(file.read())
        encoders.encode_base64(part)
        part.add_header('Content-Disposition', "attachment", filename="추석기사.xlsx")
        msg.attach(part)

        # 메일 보내고 서버 끄기
        s.sendmail(me, you, msg.as_string())

    s.quit()

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
ws1.append(["제목", "링크", "신문사", "썸내일"])

for article in articles:
    a_tag = article.select_one("div.news_wrap.api_ani_send > div.news_area > a")
    title = a_tag.text
    url = a_tag['href']
    #sp_nws1 > div.news_wrap.api_ani_send > div > div.news_info > div.info_group > a.info.press
    comp = article.select_one('div.news_wrap.api_ani_send > div > div.news_info > div.info_group > a').text.split(' ')[0].replace('언론사','')
    #sp_nws1 > div.news_wrap.api_ani_send > a
    thumbnail = article.select_one("div.news_wrap.api_ani_send > a > img")['src']
    ws1.append([title, url, comp, thumbnail])

wb.save(filename='articles.xlsx')
driver.quit()

email_send()