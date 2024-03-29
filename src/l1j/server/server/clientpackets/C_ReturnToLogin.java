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
package l1j.server.server.clientpackets;

import java.util.logging.Logger;
import l1j.server.server.ClientThread;
import l1j.server.server.LoginController;

// Referenced classes of package l1j.server.server.clientpackets:
// ClientBasePacket

/**
 * 处理收到由客户端传来回到登入画面的封包
 */
public class C_ReturnToLogin extends ClientBasePacket {

	private static Logger _log = Logger.getLogger(C_ReturnToLogin.class.getName());

	public C_ReturnToLogin(byte decrypt[], ClientThread client)
			throws Exception {
		super(decrypt);
		String account = client.getAccountName();
		_log.finest((new StringBuilder()).append("account : ").append(account).toString());
		client.kick();
		LoginController.getInstance().logout(client);
	}

	@Override
	public String getType() {
		return "[C] C_ReturnToLogin";
	}

}
