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
package l1j.server.server.model.map;

import l1j.server.server.types.Point;

/**
 * L1Map マップ情报を保持し、それに对する样々なインターフェースを提供する。
 */
public abstract class L1Map {
	private static L1NullMap _nullMap = new L1NullMap();

	protected L1Map() {
	}

	/**
	 * このマップのマップIDを返す。
	 * 
	 * @return マップID
	 */
	public abstract int getId();

	// TODO JavaDoc
	public abstract int getX();

	public abstract int getY();

	public abstract int getWidth();

	public abstract int getHeight();

	/**
	 * 指定された座标の值を返す。
	 * 
	 * 推奖されていません。このメソッドは、既存コードとの互换性の为に提供されています。
	 * L1Mapの利用者は通常、マップにどのような值が格纳されているかを知る必要はありません。
	 * また、格纳されている值に依存するようなコードを书くべきではありません。 デバッグ等の特殊な场合に限り、このメソッドを利用できます。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 指定された座标の值
	 */
	public abstract int getTile(int x, int y);

	/**
	 * 指定された座标の值を返す。
	 * 
	 * 推奖されていません。このメソッドは、既存コードとの互换性の为に提供されています。
	 * L1Mapの利用者は通常、マップにどのような值が格纳されているかを知る必要はありません。
	 * また、格纳されている值に依存するようなコードを书くべきではありません。 デバッグ等の特殊な场合に限り、このメソッドを利用できます。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 指定された座标の值
	 */
	public abstract int getOriginalTile(int x, int y);

	/**
	 * 指定された座标がマップの范围内であるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return 范围内であればtrue
	 */
	public abstract boolean isInMap(Point pt);

	/**
	 * 指定された座标がマップの范围内であるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 范围内であればtrue
	 */
	public abstract boolean isInMap(int x, int y);

	/**
	 * 指定された座标が通行可能であるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return 通行可能であればtrue
	 */
	public abstract boolean isPassable(Point pt);

	/**
	 * 指定された座标が通行可能であるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 通行可能であればtrue
	 */
	public abstract boolean isPassable(int x, int y);

	/**
	 * 指定された座标のheading方向が通行可能であるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return 通行可能であればtrue
	 */
	public abstract boolean isPassable(Point pt, int heading);

	/**
	 * 指定された座标のheading方向が通行可能であるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 通行可能であればtrue
	 */
	public abstract boolean isPassable(int x, int y, int heading);

	/**
	 * 指定された座标の通行可能、不能を设定する。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @param isPassable
	 *            通行可能であればtrue
	 */
	public abstract void setPassable(Point pt, boolean isPassable);

	/**
	 * 指定された座标の通行可能、不能を设定する。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @param isPassable
	 *            通行可能であればtrue
	 */
	public abstract void setPassable(int x, int y, boolean isPassable);

	/**
	 * 指定された座标がセーフティーゾーンであるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return セーフティーゾーンであればtrue
	 */
	public abstract boolean isSafetyZone(Point pt);

	/**
	 * 指定された座标がセーフティーゾーンであるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return セーフティーゾーンであればtrue
	 */
	public abstract boolean isSafetyZone(int x, int y);

	/**
	 * 指定された座标がコンバットゾーンであるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return コンバットゾーンであればtrue
	 */
	public abstract boolean isCombatZone(Point pt);

	/**
	 * 指定された座标がコンバットゾーンであるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return コンバットゾーンであればtrue
	 */
	public abstract boolean isCombatZone(int x, int y);

	/**
	 * 指定された座标がノーマルゾーンであるかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return ノーマルゾーンであればtrue
	 */
	public abstract boolean isNormalZone(Point pt);

	/**
	 * 指定された座标がノーマルゾーンであるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return ノーマルゾーンであればtrue
	 */
	public abstract boolean isNormalZone(int x, int y);

	/**
	 * 指定された座标が矢や魔法を通すかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @return 矢や魔法を通す场合、true
	 */
	public abstract boolean isArrowPassable(Point pt);

	/**
	 * 指定された座标が矢や魔法を通すかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 矢や魔法を通す场合、true
	 */
	public abstract boolean isArrowPassable(int x, int y);

	/**
	 * 指定された座标のheading方向が矢や魔法を通すかを返す。
	 * 
	 * @param pt
	 *            座标を保持するPointオブジェクト
	 * @param heading
	 *            方向
	 * @return 矢や魔法を通す场合、true
	 */
	public abstract boolean isArrowPassable(Point pt, int heading);

	/**
	 * 指定された座标のheading方向が矢や魔法を通すかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @param heading
	 *            方向
	 * @return 矢や魔法を通す场合、true
	 */
	public abstract boolean isArrowPassable(int x, int y, int heading);

	/**
	 * このマップが、水中マップであるかを返す。
	 * 
	 * @return 水中であれば、true
	 */
	public abstract boolean isUnderwater();

	/**
	 * このマップが、ブックマーク可能であるかを返す。
	 * 
	 * @return ブックマーク可能であれば、true
	 */
	public abstract boolean isMarkable();

	/**
	 * このマップが、ランダムテレポート可能であるかを返す。
	 * 
	 * @return ランダムテレポート可能であれば、true
	 */
	public abstract boolean isTeleportable();

	/**
	 * このマップが、MAPを超えたテレポート可能であるかを返す。
	 * 
	 * @return テレポート可能であれば、true
	 */
	public abstract boolean isEscapable();

	/**
	 * このマップが、复活可能であるかを返す。
	 * 
	 * @return 复活可能であれば、true
	 */
	public abstract boolean isUseResurrection();

	/**
	 * このマップが、パインワンド使用可能であるかを返す。
	 * 
	 * @return パインワンド使用可能であれば、true
	 */
	public abstract boolean isUsePainwand();

	/**
	 * このマップが、デスペナルティがあるかを返す。
	 * 
	 * @return デスペナルティがあれば、true
	 */
	public abstract boolean isEnabledDeathPenalty();

	/**
	 * このマップが、ペット・サモンを连れて行けるかを返す。
	 * 
	 * @return ペット・サモンを连れて行けるならばtrue
	 */
	public abstract boolean isTakePets();

	/**
	 * このマップが、ペット・サモンを呼び出せるかを返す。
	 * 
	 * @return ペット・サモンを呼び出せるならばtrue
	 */
	public abstract boolean isRecallPets();

	/**
	 * このマップが、アイテムを使用できるかを返す。
	 * 
	 * @return アイテムを使用できるならばtrue
	 */
	public abstract boolean isUsableItem();

	/**
	 * このマップが、スキルを使用できるかを返す。
	 * 
	 * @return スキルを使用できるならばtrue
	 */
	public abstract boolean isUsableSkill();

	/**
	 * 指定された座标が钓りゾーンであるかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return 钓りゾーンであればtrue
	 */
    public abstract boolean isFishingZone(int x, int y);

	/**
	 * 指定された座标にドアが存在するかを返す。
	 * 
	 * @param x
	 *            座标のX值
	 * @param y
	 *            座标のY值
	 * @return ドアがあればtrue
	 */
    public abstract boolean isExistDoor(int x, int y);

	public static L1Map newNull() {
		return _nullMap;
	}

	/**
	 * 指定されたptのタイルの文字列表现を返す。
	 */
	public abstract String toString(Point pt);

	/**
	 * このマップがnullであるかを返す。
	 * 
	 * @return nullであれば、true
	 */
	public boolean isNull() {
		return false;
	}
}

/**
 * 何もしないMap。
 */
class L1NullMap extends L1Map {
	public L1NullMap() {
	}

	@Override
	public int getId() {
		return 0;
	}

	@Override
	public int getX() {
		return 0;
	}

	@Override
	public int getY() {
		return 0;
	}

	@Override
	public int getWidth() {
		return 0;
	}

	@Override
	public int getHeight() {
		return 0;
	}

	@Override
	public int getTile(int x, int y) {
		return 0;
	}

	@Override
	public int getOriginalTile(int x, int y) {
		return 0;
	}

	@Override
	public boolean isInMap(int x, int y) {
		return false;
	}

	@Override
	public boolean isInMap(Point pt) {
		return false;
	}

	@Override
	public boolean isPassable(int x, int y) {
		return false;
	}

	@Override
	public boolean isPassable(Point pt) {
		return false;
	}

	@Override
	public boolean isPassable(int x, int y, int heading) {
		return false;
	}

	@Override
	public boolean isPassable(Point pt, int heading) {
		return false;
	}

	@Override
	public void setPassable(int x, int y, boolean isPassable) {
	}

	@Override
	public void setPassable(Point pt, boolean isPassable) {
	}

	@Override
	public boolean isSafetyZone(int x, int y) {
		return false;
	}

	@Override
	public boolean isSafetyZone(Point pt) {
		return false;
	}

	@Override
	public boolean isCombatZone(int x, int y) {
		return false;
	}

	@Override
	public boolean isCombatZone(Point pt) {
		return false;
	}

	@Override
	public boolean isNormalZone(int x, int y) {
		return false;
	}

	@Override
	public boolean isNormalZone(Point pt) {
		return false;
	}

	@Override
	public boolean isArrowPassable(int x, int y) {
		return false;
	}

	@Override
	public boolean isArrowPassable(Point pt) {
		return false;
	}

	@Override
	public boolean isArrowPassable(int x, int y, int heading) {
		return false;
	}

	@Override
	public boolean isArrowPassable(Point pt, int heading) {
		return false;
	}

	@Override
	public boolean isUnderwater() {
		return false;
	}

	@Override
	public boolean isMarkable() {
		return false;
	}

	@Override
	public boolean isTeleportable() {
		return false;
	}

	@Override
	public boolean isEscapable() {
		return false;
	}

	@Override
	public boolean isUseResurrection() {
		return false;
	}

	@Override
	public boolean isUsePainwand() {
		return false;
	}

	@Override
	public boolean isEnabledDeathPenalty() {
		return false;
	}

	@Override
	public boolean isTakePets() {
		return false;
	}

	@Override
	public boolean isRecallPets() {
		return false;
	}

	@Override
	public boolean isUsableItem() {
		return false;
	}

	@Override
	public boolean isUsableSkill() {
		return false;
	}

	@Override
	public boolean isFishingZone(int x, int y) {
		return false;
	}

	@Override
	public boolean isExistDoor(int x, int y) {
		return false;
	}

	@Override
	public String toString(Point pt) {
		return "null";
	}

	@Override
	public boolean isNull() {
		return true;
	}
}
