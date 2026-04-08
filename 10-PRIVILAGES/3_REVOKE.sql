-- ALL REVOKE PERMISSION --

revoke delete, update, select, insert on student from 'amol';

revoke all on college.student from 'amol';

revoke connect from 'amol';

revoke all on college.student from 'amol', 'amol1';

