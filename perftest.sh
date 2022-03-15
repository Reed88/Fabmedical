host="fabmedical-562485.documents.azure.com"
username="fabmedical-562485"
password="YJUdoNjNEeZu70YYfpjXBDCBqHsCQWXZf5q5Ms66blwn1Hmg0DzLyjVuHBT6betxE7NGPqrzWu4AjTztqUrh2A=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
