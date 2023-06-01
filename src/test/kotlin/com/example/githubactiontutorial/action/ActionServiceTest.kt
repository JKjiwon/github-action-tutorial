package com.example.githubactiontutorial.action

import org.assertj.core.api.Assertions.assertThat
import org.junit.jupiter.api.Test

class ActionServiceTest {
    private val actionService: ActionService = ActionService()

    @Test
    fun callAbcReturnTrue() {
        assertThat(actionService.abc()).isFalse()
    }
}