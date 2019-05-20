package ba.pehli.cinema.test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.*;
import static org.testng.Assert.assertEquals;
import org.testng.Assert;
public class Tester {
	
                        public WebDriver driver;

                        public String testURL = "http://localhost:8181/cinema/movies";


                       	 public WebElement usernameElement = driver.findElement(By.id("j_username"));
                         public WebElement passwordElement = driver.findElement(By.id("j_password"));
                         public WebElement formElement = driver.findElement(By.id("loginForm"));

                         @BeforeMethod
                         public void setupTest (){
                                 driver = new FirefoxDriver();

                                 driver.navigate().to(testURL);
                         }


                         @Test
                         public void firstTest () {
                                 usernameElement.sendKeys("admin");
                                 passwordElement.sendKeys("admin");
                                 formElement.submit();
				 WebDriverWait wait = new WebDriverWait(driver, 5);
                                 WebElement messageElement = wait.until(
                                    ExpectedConditions.presenceOfElementLocated(By.className("welcome"))
                                 );


                                   String message = messageElement.getText();
                                   String successMsg = "welcome admin";

                                   Assert.assertEquals (message, successMsg);

                         }
                         public void teardownTest (){

                         driver.quit();
                         }
}
