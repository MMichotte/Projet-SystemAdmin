#!/bin/bash
echo 'creating emails for martin, morgan and olivier...'
sleep 1

exec ./setup.sh email add martin@wt2-5.ephec-ti.be martin@123
exec ./setup.sh email add morgan@wt2-5.ephec-ti.be morgan@123
exec ./setup.sh email add olivier@wt2-5.ephec-ti.be olivier@123

echo 'creating alias for contact@wt2-5.ephec-ti.be and b2b@wt2-5.ephec-ti.be...'
sleep 1

exec ./setup.sh alias add contact@wt2-5.ephec-ti.be olivier@wt2-5.ephec-ti.be
exec ./setup.sh alias add b2b@wt2-5.ephec-ti.be olivier@wt2-5.ephec-ti.be

echo 'finishing script...'
exec ./setup.sh config dkim
echo 'Done.'