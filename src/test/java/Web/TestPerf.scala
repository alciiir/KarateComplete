package Web

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

import scala.concurrent.duration._
import scala.language.postfixOps

class TestPerf extends Simulation{
  val testUI = scenario("IngresoWeb").exec(karateFeature("classpath:Web/IngresoWeb.feature"))
  setUp(
    testUI.inject(rampUsers(250) during (10 seconds))
  )
}
