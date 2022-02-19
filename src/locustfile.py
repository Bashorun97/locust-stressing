from locust import HttpUser, task, between


class ParentynUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def health_check(self):
        self.client.get("/")
