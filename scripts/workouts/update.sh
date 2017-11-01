curl --include --request PATCH "http://localhost:4741/workouts/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "workout": {
      "week": "1",
      "day": "Monday",
      "exercise": "heel slides",
      "sets": "3",
      "reps": "12"
    }
  }'
