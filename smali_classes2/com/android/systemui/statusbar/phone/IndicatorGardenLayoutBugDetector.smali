.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "IndicatorGardenLayoutBugDetector.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private BUG_VIEW_LOG_LINE_NUMBER:I

.field private mBatteryView:Landroid/view/View;

.field private mBugReportLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBugViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mCurrentTime:Ljava/lang/String;

.field private mIsKeyguardShowing:Z

.field private mJamTrigger:Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

.field private mNotiIconView:Landroid/view/View;

.field private mParent:Landroid/view/ViewGroup;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusIconContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mIsKeyguardShowing:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$1;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugReportLines:Ljava/util/ArrayList;

    const/16 v0, 0x64

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->BUG_VIEW_LOG_LINE_NUMBER:I

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenLayoutBugDetector$132DHIj_XBGEIsluJ9HAKqiYrlQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$IndicatorGardenLayoutBugDetector$132DHIj_XBGEIsluJ9HAKqiYrlQ;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->notification_icon_area:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mNotiIconView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBatteryView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mStatusIconContainer:Landroid/view/ViewGroup;

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v1, "IndicatorGardenLayoutBugDetector"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->registerAudience(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_INDICATOR_GARDENER_JAM_TRIGGER:Z

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mJamTrigger:Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mCurrentTime:Ljava/lang/String;

    return-object p0
.end method

.method private addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LayoutBugDetector"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IndicatorGardenLayoutBugDetector"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkLayoutBug()Z
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isClockEllipsisBug()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 154
    const-class v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 155
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isMiddleClockPosition()Z

    move-result v4

    if-nez v4, :cond_1

    const-class v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 156
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isRightClockPosition()Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_CARRIER_PLMN:Z

    if-nez v4, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->getClockView()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mNotiIconView:Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v0, :cond_2

    move v5, v1

    goto :goto_1

    .line 160
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isOverlappedNotiIconBrothers()Z

    move-result v5

    .line 162
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isStatusIconHole()Z

    move-result v6

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isNotificationIconHole()Z

    move-result v7

    if-eqz v0, :cond_3

    move p0, v1

    goto :goto_2

    .line 166
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isBatteryIconHole()Z

    move-result p0

    :goto_2
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    return v1

    .line 169
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutBugDetector has found out this jungle-like situation...clockEllipsisBug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notiInvadeBug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notiIconsOverlap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", statIconHole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notiIconHole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", batteryIconHole:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IndicatorGardenLayoutBugDetector"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getClockView()Landroid/widget/TextView;
    .locals 1

    .line 272
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isBatteryIconHole()Z
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBatteryView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBatteryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 265
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBatteryView:Landroid/view/View;

    const-string v2, "batteryIconHole"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private isClockEllipsisBug()Z
    .locals 3

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->getClockView()Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    invoke-virtual {v1, p0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private isNotificationIconHole()Z
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mNotiIconView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 247
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 250
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 253
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_3

    .line 254
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v1, "notiIconHole"

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private isOverlappedNotiIconBrothers()Z
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mNotiIconView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 207
    :cond_0
    sget v2, Lcom/android/systemui/R$id;->notificationIcons:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-nez v0, :cond_1

    return v1

    .line 209
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    .line 213
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    const/4 v4, 0x2

    if-ge v2, v4, :cond_5

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 216
    instance-of v5, v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_4

    .line 217
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 218
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutBugDetector.isOverlappedNotiIconBrothers() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":nowNotiIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorGardenLayoutBugDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v1, "notiIconsOverlap1"

    invoke-direct {v0, p0, v1, v3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    .line 221
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v1, "notiIconsOverlap2"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_5
    return v1
.end method

.method private isOverlappedViews(Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 194
    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    aget v1, v1, v0

    sub-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v1, "notiInvadeBug1"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    .line 198
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v0, "notiInvadeBug2"

    invoke-direct {p1, p0, v0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private isStatusIconHole()Z
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mStatusIconContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mStatusIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mStatusIconContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 235
    instance-of v3, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v3, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    const-string v1, "statIconHole"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->addBugViewItem(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public checkAndUpdateLayout()V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mIsKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 112
    const-class v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    const-string v1, "IndicatorGardenLayoutBugDetector"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->unregisterAudience(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public dumpBugViews(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "IndicatorGardenLayoutBugDetector LayoutBugDetector (dumpBugViews)"

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugReportLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$IndicatorGardenLayoutBugDetector()V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mIsKeyguardShowing:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->checkLayoutBug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugReportLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->BUG_VIEW_LOG_LINE_NUMBER:I

    if-le v2, v3, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugReportLines:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugReportLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mBugViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 90
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 91
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "IndicatorGardenLayoutBugDetector"

    const-string v1, "The Indicator Layout operation has failed. It\'s not a big obstacle, but please notify us (gcc-.park) to improve Layout : "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public notifyTimeChanged(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mCurrentTime:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->mIsKeyguardShowing:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method
