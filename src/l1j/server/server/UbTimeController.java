/**
 *                            License
 * THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS  
 * CREATIVE COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). 
 * THE WORK IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW.  
 * ANY USE OF THE WORK OTHER THAN AS AUTHORIZED UNDER THIS LICENSE OR  
 * COPYRIGHT LAW IS PROHIBITED.
 * 
 * BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND  
 * AGREE TO BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE  
 * MAY BE CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS CONTAINED 
 * HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.
 * 
 */
package l1j.server.server;

import java.util.logging.Logger;

import l1j.server.server.datatables.UBTable;
import l1j.server.server.model.L1UltimateBattle;
import l1j.server.server.model.L1World;

public class UbTimeController implements Runnable {
	private static Logger _log = Logger.getLogger(UbTimeController.class
			.getName());

	private static UbTimeController _instance;

	public static UbTimeController getInstance() {
		if (_instance == null) {
			_instance = new UbTimeController();
		}
		return _instance;
	}

	@Override
	public void run() {
		try {
			while (true) {
				checkUbTime(); // 开始检查无限大战的时间
				Thread.sleep(15000);
			}
		} catch (Exception e1) {
			_log.warning(e1.getMessage());
		}
	}

	private void checkUbTime() {
		for (L1UltimateBattle ub : UBTable.getInstance().getAllUb()) {
			if (ub.checkUbTime() && !ub.isActive()) {
				ub.start(); // 无限大战开始
				//竞技场５分钟后比赛将开始，想参赛者请现在入场。
				L1World.getInstance().broadcastServerMessage("[活动公告]无限大战竞技场3分钟后开始请速度登场。");
				// 无限大赛讯息end
			}
		}
	}

}
