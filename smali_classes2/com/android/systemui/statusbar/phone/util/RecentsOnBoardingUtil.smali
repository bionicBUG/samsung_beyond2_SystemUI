.class public Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;
.super Ljava/lang/Object;
.source "RecentsOnBoardingUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastNavigationMode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarLastNavigationMode"

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getOpenedKeyboardTipCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarKeyboardTipSeenCount"

    const/4 v1, 0x0

    .line 38
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSwipeRightTipSeenCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarGestureSwipeRightTipSeenCount"

    const/4 v1, 0x0

    .line 29
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSwipeUpHoldTipSeenCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarGestureSwipeUpAndHoldTipSeenCount"

    const/4 v1, 0x0

    .line 20
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTwoFingerSwipeUpTipCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "NavigationBarAccessibilityShortcutTipCount"

    const/4 v1, 0x0

    .line 47
    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isKeyboardTipPopupAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getOpenedKeyboardTipCount(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSwipeUpAndHoldPopupAvailable(Landroid/content/Context;I)Z
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getLastNavigationMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 65
    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->setLastNavigationMode(Landroid/content/Context;I)V

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getSwipeUpHoldTipSeenCount(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x3

    if-ge p0, p1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public static isTwoFingerSwipeUpPopupAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 70
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getTwoFingerSwipeUpTipCount(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setLastNavigationMode(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "NavigationBarLastNavigationMode"

    .line 60
    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setOpenedKeyboardTipCount(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getOpenedKeyboardTipCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "NavigationBarKeyboardTipSeenCount"

    .line 42
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSwipeRightTipSeenCount(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getSwipeRightTipSeenCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "NavigationBarGestureSwipeRightTipSeenCount"

    .line 33
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSwipeUpHoldTipSeenCount(Landroid/content/Context;)V
    .locals 2

    .line 25
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getSwipeUpHoldTipSeenCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "NavigationBarGestureSwipeUpAndHoldTipSeenCount"

    .line 24
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setTwoFingerSwipeUpTipCount(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getTwoFingerSwipeUpTipCount(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "NavigationBarAccessibilityShortcutTipCount"

    .line 51
    invoke-static {p0, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
