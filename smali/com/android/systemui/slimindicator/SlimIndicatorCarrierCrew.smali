.class public Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;
.super Ljava/lang/Object;
.source "SlimIndicatorCarrierCrew.java"


# static fields
.field private static CACHED_VALUE_FALSE:I = -0x1

.field private static CACHED_VALUE_RAW:I = 0x0

.field private static CACHED_VALUE_TRUE:I = 0x1


# instance fields
.field private mIsHomeCarrierDisabled:I

.field private mIsLockCarrierDisabled:I

.field private mIsPanelCarrierDisabled:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    .line 37
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    .line 38
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    return-void
.end method


# virtual methods
.method public isHomeCarrierDisabled()Z
    .locals 1

    .line 40
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockCarrierDisabled()Z
    .locals 1

    .line 41
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 1

    .line 42
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateAllData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "icon_blacklist"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo p2, "slimindicator_lock_carrier"

    .line 69
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "slimindicator_home_carrier"

    .line 70
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "slimindicator_panel_carrier"

    .line 71
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_0

    .line 72
    sget p2, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_0
    iput p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    if-eqz v0, :cond_1

    .line 73
    sget p2, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_1
    iput p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-eqz p1, :cond_2

    .line 74
    sget p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    :cond_3
    return-void
.end method
