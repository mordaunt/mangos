DELETE FROM `mangos_string` WHERE `entry` IN (11600, 11601, 11602, 11603, 11604, 11605, 11606, 11607, 11608);
INSERT INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(11600, 'ChatSpy appended to player |cffff0000%s|r(%u)', NULL, NULL, NULL, NULL, NULL, 'ChatSpy activado para el jugador |cffff0000%s|r(%u)', 'ChatSpy activado para el jugador |cffff0000%s|r(%u)', 'ChatSpy присоединён к игроку |cffff0000%s|r(%u)'),
(11601, 'ChatSpy for player |cffff0000%s|r(%u) cancelled by massive ChatSpy cancel.', NULL, NULL, NULL, NULL, NULL, 'El ChatSpy del jugador |cffff0000%s|r(%u) ha sido desactivado porque un Maestro de Juego ha usado el reseteo masivo.', 'El ChatSpy del jugador |cffff0000%s|r(%u) ha sido desactivado porque un Maestro de Juego ha usado el reseteo masivo.', 'ChatSpy для игрока |cffff0000%s|r(%u) отменён массовым сбросом системы ChatSpy.'),
(11602, 'All ChatSpys reset.', NULL, NULL, NULL, NULL, NULL, 'Eliminados todos los ChatSpys activos.', 'Eliminados todos los ChatSpys activos.', 'ChatSpy для всех игроков сброшен.'),
(11603, 'Player %s(%u) has no ChatSpy.', NULL, NULL, NULL, NULL, NULL, 'El jugador %s(%u) no tiene el ChatSpy activado.', 'El jugador %s(%u) no tiene el ChatSpy activado.', 'К игроку %s(%u) не прикреплён ChatSpy.'),
(11604, 'You were ChatSpying player, cancelled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ChatSpying снят с игрока.'),
(11605, '%s(%u) was ChatSpying player, cancelled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s(%u) установил ChatSpy на игрока, отменено.'),
(11606, 'List of ChatSpys appended', NULL, NULL, NULL, NULL, NULL, 'Lista de ChatSpys activos', 'Lista de ChatSpys activos', 'Список установленных ChatSpy'),
(11607, 'Total: %u', NULL, NULL, NULL, NULL, NULL, 'Total: %u', 'Total: %u', 'Всего: %u'),
(11608, '%s(%u) spys |cffff0000%s|r(%u)', NULL, NULL, NULL, NULL, NULL, '%s(%u) espia |cffff0000%s|r(%u)', '%s(%u) espia |cffff0000%s|r(%u)', '%s(%u) следит за |cffff0000%s|r(%u)');

DELETE FROM `command` WHERE `name` IN ('chatspy set', 'chatspy reset', 'chatspy status', 'chatspy cancel');
INSERT INTO `command` VALUES
('chatspy set', 3, 'Syntax: .chatspy set $PlayerName\r\n Append ChatSpy on $player.'),
('chatspy reset', 3, 'Syntax: .chatspy reset\r\n Reset all ChatSpys.'),
('chatspy status', 3, 'Syntax: .chatspy status $PlayerName\r\n Show ChatSpy status for $player.'),
('chatspy cancel', 3, 'Syntax: .chatspy cancel $PlayerName\r\n Reset ChatSpy for $player.');