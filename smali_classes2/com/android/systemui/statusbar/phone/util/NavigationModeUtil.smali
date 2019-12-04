.class public Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;
.super Ljava/lang/Object;
.source "NavigationModeUtil.java"


# static fields
.field private static mGestureEnabledOnKeyboard:Z

.field private static mGestureHint:Z

.field private static mGestureType:I

.field private static mSensitivity:I

.field private static sNoHintsSensitivityList:[Ljava/lang/String;

.field private static sSensitivityList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.android.internal.systemui.navbar.gestural_narrow_back"

    const-string v1, "com.android.internal.systemui.navbar.gestural"

    const-string v2, "com.android.internal.systemui.navbar.gestural_wide_back"

    const-string v3, "com.android.internal.systemui.navbar.gestural_extra_wide_back"

    .line 36
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->sSensitivityList:[Ljava/lang/String;

    const-string v0, "com.samsung.internal.systemui.navbar.gestural_no_hint_narrow_back"

    const-string v1, "com.samsung.internal.systemui.navbar.gestural_no_hint"

    const-string v2, "com.samsung.internal.systemui.navbar.gestural_no_hint_wide_back"

    const-string v3, "com.samsung.internal.systemui.navbar.gestural_no_hint_extra_wide_back"

    .line 42
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->sNoHintsSensitivityList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOverlayPackage(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    .line 61
    sget p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureType:I

    if-nez p0, :cond_1

    .line 62
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureHint:Z

    if-eqz p0, :cond_0

    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 65
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureHint:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->sSensitivityList:[Ljava/lang/String;

    sget v0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mSensitivity:I

    aget-object p0, p0, v0

    goto :goto_0

    .line 66
    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->sNoHintsSensitivityList:[Ljava/lang/String;

    sget v0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mSensitivity:I

    aget-object p0, p0, v0

    goto :goto_0

    :cond_3
    const-string p0, ""

    goto :goto_0

    :cond_4
    const-string p0, "com.android.internal.systemui.navbar.threebutton"

    :goto_0
    return-object p0
.end method

.method public static isAllowedBackGestureOnKeyboard()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureEnabledOnKeyboard:Z

    return v0
.end method

.method public static isBottomGesture(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSideBottomGesture(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setBackGestureOnKeyboard(Z)V
    .locals 0

    .line 103
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureEnabledOnKeyboard:Z

    return-void
.end method

.method public static setBackGestureSensitivity(I)V
    .locals 0

    .line 95
    sput p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mSensitivity:I

    return-void
.end method

.method public static setGestureHintEnabled(Z)V
    .locals 0

    .line 87
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureHint:Z

    return-void
.end method

.method public static setGestureType(I)V
    .locals 0

    .line 99
    sput p0, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->mGestureType:I

    return-void
.end method

.method public static setNavigationMode(Z)V
    .locals 1

    .line 107
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SET_NAVIGATION_MODE_UTIL:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setNavigationMode(ZLcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    return-void
.end method

.method public static setNavigationMode(ZLcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V
    .locals 2

    .line 111
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->getOverlayPackage(Z)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    return-void
.end method
