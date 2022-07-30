output config {
	value = [
		google_sql_database_instance.instance.name,
		google_sql_database_instance.instance.connection_name,
		google_sql_database_instance.instance.first_ip_address,
		google_sql_database_instance.instance.public_ip_address,
		google_sql_database_instance.instance.self_link
	]
}