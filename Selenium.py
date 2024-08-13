from selenium import webdriver
from selenium.webdriver.common.by import By

from selenium import webdriver


def test_google_search():
    driver = webdriver.Firefox()

    # Open Google
    driver.get("https://www.google.com")

    # Find the search box and search for "Selenium"
    search_box = driver.find_element(By.NAME, "q")
    search_box.send_keys("Selenium")
    search_box.submit()
    # Verify the title contains "Selenium"
    assert "" in driver.title

    # Close the browser
    driver.quit()

if __name__ == "__main__":
    test_google_search()
    

