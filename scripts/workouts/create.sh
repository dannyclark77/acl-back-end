curl --include --request POST http://localhost:4741/workouts \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "workout": {
      "week": "1",
      "day": "Monday",
      "exercise": "straight leg raises",
      "sets": "3",
      "reps": "12"
    }
  }'
