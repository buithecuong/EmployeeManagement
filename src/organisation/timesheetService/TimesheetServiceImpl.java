package organisation.timesheetService;

import java.util.List;

import org.springframework.stereotype.Service;

import organisation.employeeDaoImpl.EmployeeDaoImpl;
import organisation.model.TimeSheet;
import organisation.timesheetDao.TimesheetDaoImpl;

@Service
public class TimesheetServiceImpl implements TimesheetService {

	TimesheetDaoImpl TimesheetDao = new TimesheetDaoImpl();
	EmployeeDaoImpl EmployeeDao = new EmployeeDaoImpl();

	TimeSheet timeSheet;

	@Override
	public List<TimeSheet> getList() {
		List<TimeSheet> timesheetList = TimesheetDao.getTimesheet();
		return timesheetList;
	}

	@Override
	public int deleteTimesheetDetails(int id) {
		int deletedid = TimesheetDao.deleteTimeDetails(id);
		return deletedid;
	}

	@Override
	public int updatetimesheet(TimeSheet timesheet) {
		int updatedId = TimesheetDao.updateTime(timesheet);
		return updatedId;
	}

	@Override
	public TimeSheet TimesheetDetails(int timesheetId) {
		TimeSheet timesheet = (TimeSheet) TimesheetDao.getTimesheet();
		return timesheet;
	}

	

}
