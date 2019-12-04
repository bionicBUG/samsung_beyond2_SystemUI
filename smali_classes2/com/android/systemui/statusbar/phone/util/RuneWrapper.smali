.class public Lcom/android/systemui/statusbar/phone/util/RuneWrapper;
.super Ljava/lang/Object;
.source "RuneWrapper.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenThemeSupported()Z
    .locals 0

    .line 14
    sget-boolean p0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    return p0
.end method

.method public isRemoteViewSupported()Z
    .locals 0

    .line 9
    sget-boolean p0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    return p0
.end method

.method public isTablet()Z
    .locals 0

    .line 19
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    return p0
.end method

.method public isWinner()Z
    .locals 0

    .line 24
    sget-boolean p0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_MOVABLE_POSITION:Z

    return p0
.end method
