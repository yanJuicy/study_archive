from bs4 import BeautifulSoup
from selenium import webdriver
import time
import dload

driver = webdriver.Chrome('./chromedriver') # 웹드라이버 파일의 경로
driver.get("https://www.google.com/search?q=%EC%8A%AC%EA%B8%B0&rlz=1C5CHFA_enKR961KR961&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj0nMb6xobzAhVSDN4KHXGhD4MQ_AUoAXoECAEQAw&biw=960&bih=946&dpr=1")
time.sleep(5) # 5초 동안 페이지 로딩 기다리기

req = driver.page_source
# HTML을 BeautifulSoup이라는 라이브러리를 활용해 검색하기 용이한 상태로 만듦
# soup이라는 변수에 "파싱 용이해진 html"이 담긴 상태가 됨
# 이제 코딩을 통해 필요한 부분을 추출하면 된다.
soup = BeautifulSoup(req, 'html.parser')

thumbnails = soup.select("#islrg > div > div > a > div > img")
#islrg > div.islrc > div:nth-child(1) > a.wXeWr.islib.nfEiy > div.bRMDJf.islir > img
#islrg > div.islrc > div:nth-child(48) > a.wXeWr.islib.nfEiy > div.bRMDJf.islir > img
i = 1
for thumbnail in thumbnails:
    print(thumbnail)
    src = thumbnail["src"]
    # dload.save(src, f'img_homework/{i}.jpg')
    i += 1

driver.quit() # 끝나면 닫아주기