package REST

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

import scala.concurrent.duration._
import scala.language.postfixOps


class TestPerfAPI extends Simulation {
  val testAPI = scenario("get").exec(karateFeature("classpath:REST/get.feature"))
  setUp(
    testAPI.inject(rampUsers(250) during (15 seconds))
  )
}
