package com.example.githubactiontutorial

import org.slf4j.Logger
import org.slf4j.LoggerFactory
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class GithubActionTutorialApplication

private val log : Logger = LoggerFactory.getLogger(GithubActionTutorialApplication::class.java)

fun main(args: Array<String>) {
	runApplication<GithubActionTutorialApplication>(*args)
	log.info("GithubActionTutorialApplication start")
}