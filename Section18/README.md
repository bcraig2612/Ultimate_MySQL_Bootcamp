**DATABASE TRIGGERS** -_SQL Statements that are AUTOMATICALLY RAN when a specific table is changed_
**TRIGGER TIME** - _BEFORE | AFTER_
**TRIGGER EVENT** - _INSERT | UPDATE | DELETE_
**ON**
**TABLE NAME** - _PHOTOS | USERS_

**SIGNAL SQLSTATE '45000'** - _Custom Error for SQL DB devs to throw an error when needed_

**DELIMETER $$ $$** - _The code block is only executed once the 2nd pair of '$$' have been reached. SQL will no longer execute when it finds a ';' as long as it's between the '$$'_

**SHOW TRIGGERS;** - _lists the current triggers created._

**DROP TRIGGER trigger_name;** - _removing triggers from current triggers._

**A WORD OF WARNING: Triggers Can Make Debugging Hard!!!**
