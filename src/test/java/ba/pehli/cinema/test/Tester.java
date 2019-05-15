package ba.pehli.cinema.test;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionData;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.facebook.api.Facebook;
import org.springframework.social.facebook.connect.FacebookConnectionFactory;
import org.springframework.social.oauth1.OAuth1Operations;
import org.springframework.social.oauth2.AccessGrant;
import org.springframework.social.oauth2.OAuth2Operations;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.junit.Assert;

public class Tester {

                        public WebDriver driver;

                        public String testURL = "http://localhost:8181/cinema/movies";
    

                       public WebElement usernameElement = driver.findElement(By.id("j_username"));
                         public WebElement passwordElement = driver.findElement(By.id("j_password"));
                         public WebElement formElement = driver.findElement(By.id("loginForm"));

                         @BeforeMethod
                         public void setupTest (){
                                 driver = new ChromeDriver();

                                 driver.navigate().to(testURL);
                         }


                         @Test
                         public void firstTest () {
                                 usernameElement.sendKeys("admin");
                                 passwordElement.sendKeys("admin");
                                 formElement.submit();
                            
                                 webElement messageElement = wait.until(
                                    ExpectedConditions.presenceOfElementLocated(By.class_name("welcome"))
                                 );


                                   String message = messageElement.getText();
                                   String successMsg = "welcome admin";

                                   Assert.assertEquals (message, successMsg);

                         }
                         public void teardownTest (){

                         driver.quit();
                         }
                }
