package retos;

import com.intuit.karate.junit5.Karate;

public class Evalart10CiclosRunner {

    @Karate.Test
    Karate evalart10CiclosRunner() {
        return Karate.run("classpath:retos/evalart_10_ciclos.feature");
    }
}
