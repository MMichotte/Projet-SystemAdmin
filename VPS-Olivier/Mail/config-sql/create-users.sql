INSERT INTO `maildb`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'wt2-5.ephec-ti.be');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', ENCRYPT('morgan007', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'morgan@wt2-5.ephec-ti.be', 'wt2-5.ephec-ti.be/morgan/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', ENCRYPT('olivier007', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'olivier@wt2-5.ephec-ti.be', 'wt2-5.ephec-ti.be/olivier/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', ENCRYPT('martin007', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'martin@wt2-5.ephec-ti.be', 'wt2-5.ephec-ti.be/martin/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', ENCRYPT('b2b007', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@wt2-5.ephec-ti.be', 'wt2-5.ephec-ti.be/commerciaux/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', ENCRYPT('contact007', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@wt2-5.ephec-ti.be', 'wt2-5.ephec-ti.be/secretaria/');