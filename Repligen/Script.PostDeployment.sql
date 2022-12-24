if not exists (select 1 from dbo.[Run])
begin
	insert into dbo.[Run] (station, station_confirmed, active_station, hmi_mobile_communication)
	values 
	('1', '0','0','pending'), 
	('2', '0','0','pending'), 
	('3', '0','0','pending'), 
	('4', '0','0','pending'), 
	('5', '0','0','pending'), 
	('6', '0','0','pending'), 
	('7', '0','0','pending'), 
	('8', '0','0','pending'), 
	('9', '0','0','pending'), 
	('10', '0','0','pending'), 
	('11', '0','0','pending'), 
	('12', '0','0','pending'), 
	('13', '0','0','pending'), 
	('14', '0','0','pending'), 
	('15', '0','0','pending'), 
	('16', '0','0','pending'), 
	('17', '0','0','pending'), 
	('18', '0','0','pending'), 
	('19', '0','0','pending'),
	('20', '0','0','pending'), 
	('21', '0','0','pending'), 
	('22', '0','0','pending'), 
	('23', '0','0','pending'), 
	('24', '0','0','pending')
end

if not exists (select 1 from dbo.[Messages])
begin
	insert into dbo.[Messages] (device, [key], [message])
	values 
	--mobile to/from messages
	('mobile_set_comm_colmn', 'filter','mobile_getFilter'),
	('mobile_set_comm_colmn', 'user','mobile_getUser'),
	('mobile_set_comm_colmn', 'station_confirm','mobile_getStation'),

	('mobile_set_comm_colmn', 'filter','mobile_gotFilter'),
	('mobile_set_comm_colmn', 'user','mobile_gotUser'),
	('mobile_set_comm_colmn', 'station_confirm','mobile_gotStation'),

	('mobile_set_hmi_msg_success', 'filter','Successfully submitted filter to db.'),
	('mobile_set_hmi_msg_success', 'user','Successfully submitted user to db.'),
	('mobile_set_hmi_msg_success', 'station_confirm','Successfully submitted station_confirm to db.'),

	('mobile_set_hmi_msg_failed', 'filter','Failed submitting filter to db.'),
	('mobile_set_hmi_msg_failed', 'user','Failed submitting user to db.'),
	('mobile_set_hmi_msg_failed', 'station_confirm','Failed submitting station_confirm to db.'),

	--hmi to/from messages
	('hmi_set_comm_colmn', 'filter','hmi_getFilter'),
	('hmi_set_comm_colmn', 'user','hmi_getUser'),
	('hmi_set_comm_colmn', 'station_confirm','hmi_getStation'),

	('hmi_set_comm_colmn', 'filter','hmi_gotFilter'),
	('hmi_set_comm_colmn', 'user','hmi_gotUser'),
	('hmi_set_comm_colmn', 'station_confirm','hmi_gotStation'),

	('hmi_set_mobile_msg_success', 'filter','Successfully submitted filter to db.'),
	('hmi_set_mobile_msg_success', 'user','Successfully submitted user to db.'),
	('hmi_set_mobile_msg_success', 'station_confirm','Successfully submitted station_confirm to db.'),

	('hmi_set_mobile_msg_failed', 'filter','Failed submitting filter to db.'),
	('hmi_set_mobile_msg_failed', 'user','Failed submitting user to db.'),
	('hmi_set_mobile_msg_failed', 'station_confirm','Failed submitting station_confirm to db.')
end

if not exists (select 1 from dbo.[Operators])
begin
	insert into dbo.[Operators] (first_name, last_name, [user_id])
	values 
	--mobile to/from messages
	('anthony', 'nguyen','1'),
	('ricky', 'bobby','2')

end

if not exists (select 1 from dbo.[Stations])
begin
	insert into dbo.[Stations] (station_number, station_number_raw)
	values 
	--mobile to/from messages
	('1', '0x3001'),
	('2', '0x3002'),
	('3', '0x3003'),
	('4', '0x3004'),
	('5', '0x3005'),
	('6', '0x3006'),
	('6', '0x3007'),
	('8', '0x3008'),
	('9', '0x3009'),
	('10', '0x3010'),
	('11', '0x3011'),
	('12', '0x3012'),
	('13', '0x3013'),
	('14', '0x3014'),
	('15', '0x3015'),
	('16', '0x3015'),
	('17', '0x3017'),
	('18', '0x3018'),
	('19', '0x3019'),
	('20', '0x3020'),
	('21', '0x3021'),
	('22', '0x3022'),
	('23', '0x3023'),
	('24', '0x3024')

end