DATA=$(curl https://api.covidtracking.com/v1/us/current.json )
POSITIVE=$(echo $DATA | jq '.[0].positive')
TODAY=$(date)

NEGATIVE=$(echo $DATA | jq '.[0].negative')

DEATHS=$(echo $DATA | jq '.[0].deaths')

HOSPITALIZED=$(echo $DATA | jq '.[0].hospitalized')

echo "On $TODAY, there was $POSITIVE positive cases,$NEGATIVE negative test, $DEATHS deaths,$HOSPITALIZED hospitalized."
