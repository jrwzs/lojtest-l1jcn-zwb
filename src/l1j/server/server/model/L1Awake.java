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
package l1j.server.server.model;

import static l1j.server.server.model.skill.L1SkillId.AWAKEN_ANTHARAS;
import static l1j.server.server.model.skill.L1SkillId.AWAKEN_FAFURION;
import static l1j.server.server.model.skill.L1SkillId.AWAKEN_VALAKAS;
import static l1j.server.server.model.skill.L1SkillId.SHAPE_CHANGE;
import l1j.server.server.model.Instance.L1ItemInstance;
import l1j.server.server.model.Instance.L1PcInstance;
import l1j.server.server.serverpackets.S_ChangeShape;
import l1j.server.server.serverpackets.S_HPUpdate;
import l1j.server.server.serverpackets.S_OwnCharAttrDef;
import l1j.server.server.serverpackets.S_OwnCharStatus2;
import l1j.server.server.serverpackets.S_SPMR;

// Referenced classes of package l1j.server.server.model:
// L1Cooking

public class L1Awake {
	private L1Awake() {
	}

	public static void start(L1PcInstance pc, int skillId) {
		if (skillId == pc.getAwakeSkillId()) { // 再次咏唱时解除觉醒状态
			stop(pc);
		}
		else if (pc.getAwakeSkillId() != 0) { // 无法与其他觉醒状态并存
			return;
		}
		else {
			if (skillId == AWAKEN_ANTHARAS) { // 觉醒：安塔瑞斯
				pc.addMaxHp(127);
				pc.sendPackets(new S_HPUpdate(pc.getCurrentHp(), pc.getMaxHp()));
				if (pc.isInParty()) { // 组队中
					pc.getParty().updateMiniHP(pc);
				}
				pc.addAc(-12);
				pc.sendPackets(new S_OwnCharStatus2(pc));
			}
			else if (skillId == AWAKEN_FAFURION) { // 觉醒：法力昂
				pc.addMr(30);
				pc.sendPackets(new S_SPMR(pc));
				pc.addWind(30);
				pc.addWater(30);
				pc.addFire(30);
				pc.addEarth(30);
				pc.sendPackets(new S_OwnCharAttrDef(pc));
			}
			else if (skillId == AWAKEN_VALAKAS) { // 觉醒：巴拉卡斯
				pc.addStr(5);
				pc.addCon(5);
				pc.addDex(5);
				pc.addCha(5);
				pc.addInt(5);
				pc.addWis(5);
				pc.sendPackets(new S_OwnCharStatus2(pc));
			}
			pc.setAwakeSkillId(skillId);
			//doPoly(pc);
			doPoly(pc,skillId); // 变更 3.52C龙骑士觉醒状态外型调整 by 0968026609
			pc.startMpReductionByAwake();
		}
	}

	public static void stop(L1PcInstance pc) {
		int skillId = pc.getAwakeSkillId();
		if (skillId == AWAKEN_ANTHARAS) { // 觉醒：安塔瑞斯
			pc.addMaxHp(-127);
			pc.sendPackets(new S_HPUpdate(pc.getCurrentHp(), pc.getMaxHp()));
			if (pc.isInParty()) { // パーティー中
				pc.getParty().updateMiniHP(pc);
			}
			pc.addAc(12);
			pc.sendPackets(new S_OwnCharAttrDef(pc));
		}
		else if (skillId == AWAKEN_FAFURION) { // 觉醒：法力昂
			pc.addMr(-30);
			pc.addWind(-30);
			pc.addWater(-30);
			pc.addFire(-30);
			pc.addEarth(-30);
			pc.sendPackets(new S_SPMR(pc));
			pc.sendPackets(new S_OwnCharAttrDef(pc));
		}
		else if (skillId == AWAKEN_VALAKAS) { // 觉醒：巴拉卡斯
			pc.addStr(-5);
			pc.addCon(-5);
			pc.addDex(-5);
			pc.addCha(-5);
			pc.addInt(-5);
			pc.addWis(-5);
			pc.sendPackets(new S_OwnCharStatus2(pc));
		}
		pc.setAwakeSkillId(0);
		undoPoly(pc);
		pc.stopMpReductionByAwake();
	}

	// 变身
	// 变更 3.52C龙骑士觉醒状态外型调整 by 0968026609
	//public static void doPoly(L1PcInstance pc) {
	public static void doPoly(L1PcInstance pc, int skillId) {
		//int polyId = 6894;
		int polyId = pc.getClassId();
		if (skillId == AWAKEN_ANTHARAS) {//TODO 觉醒：安塔瑞斯
			polyId = 9362;
		} else if (skillId == AWAKEN_FAFURION) {//TODO 觉醒：法力昂
			polyId = 9364;
		} else if (skillId == AWAKEN_VALAKAS) {//TODO 觉醒：巴拉卡斯
			polyId = 9363;
		}
		// end
		if (pc.hasSkillEffect(SHAPE_CHANGE)) {
			pc.killSkillEffectTimer(SHAPE_CHANGE);
		}
		L1ItemInstance weapon = pc.getWeapon();
		boolean weaponTakeoff = (weapon != null && !L1PolyMorph.isEquipableWeapon(polyId, weapon.getItem().getType()));
		if (weaponTakeoff) { // 解除武器时
			pc.setCurrentWeapon(0);
		}
		pc.setTempCharGfx(polyId);
		pc.sendPackets(new S_ChangeShape(pc.getId(), polyId, pc.getCurrentWeapon()));
		if (pc.isGmInvis()) { // GM隐身
		} else if (pc.isInvisble()) { // 一般隐身
			pc.broadcastPacketForFindInvis(new S_ChangeShape(pc.getId(), polyId, pc.getCurrentWeapon()), true);
		} else {
			pc.broadcastPacket(new S_ChangeShape(pc.getId(), polyId, pc.getCurrentWeapon()));
		}
		pc.getInventory().takeoffEquip(polyId); // 是否将装备的武器强制解除。
	}

	// 解除变身
	public static void undoPoly(L1PcInstance pc) {
		int classId = pc.getClassId();
		pc.setTempCharGfx(classId);
		if (!pc.isDead()) {
			pc.sendPackets(new S_ChangeShape(pc.getId(), classId, pc.getCurrentWeapon()));
			pc.broadcastPacket(new S_ChangeShape(pc.getId(), classId, pc.getCurrentWeapon()));
		}
	}

}
