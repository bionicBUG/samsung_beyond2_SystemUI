.class public Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final CONSTANT_DELAY_MS_MIN:I

.field private static final DEBUG:Z

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sDummy:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

.field private mTint:I

.field private mTwoPhoneCallEnabled:Z

.field private mTwoPhoneMsgEnabled:Z

.field private mTwoPhoneRegistered:Z

.field private mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mTwoPhoneUserCreated:Z

.field private mUpdateIconRunnable:Ljava/lang/Runnable;

.field private mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const-string v3, "two_call_enabled"

    .line 66
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "two_sms_enabled"

    .line 67
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "two_account"

    .line 68
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "two_register"

    .line 69
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    .line 298
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0xbb8

    :cond_1
    sput v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$3DeIr1av0ZSqNyp5ul0T9OJfsCM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$3DeIr1av0ZSqNyp5ul0T9OJfsCM;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->updateIcons(ZI)V

    return-void
.end method

.method private considerValuesAndUpdateIcons()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method private considerValuesAndUpdateIcons(I)V
    .locals 3

    .line 230
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUpdateIconRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private getConstantDelays()I
    .locals 3

    .line 302
    sget v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    .line 303
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const/16 v1, 0x1388

    if-eqz p0, :cond_3

    .line 304
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-lt p0, v2, :cond_1

    mul-int/lit16 v0, p0, 0x1f4

    :cond_1
    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    .line 313
    :cond_2
    sget p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->CONSTANT_DELAY_MS_MIN:I

    if-ge v0, p0, :cond_3

    move v0, p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .locals 1

    .line 143
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    if-eqz v0, :cond_0

    .line 144
    const-class v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    return-object v0

    .line 146
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sDummy:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sDummy:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    .line 147
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->sDummy:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$SecUserSwitcherController;

    return-object v0
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 0

    .line 267
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "StatusBar.TwoPhoneModeController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateIcons(ZI)V
    .locals 5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIcons(visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_system_icon_padding_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 195
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 197
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 199
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 205
    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 207
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 209
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 213
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 217
    const-class p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 218
    const-class p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(I)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/lit16 v1, v1, 0x1388

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I\'ll post dismissUserSwitchingDialog() after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    .line 329
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$bG3LHyM-MPoyEWP0fnvQzijVpKQ;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$bG3LHyM-MPoyEWP0fnvQzijVpKQ;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V

    int-to-long p0, v1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->isOnFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "---- Two Phone -----"

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mTwoPhoneCallEnabled="

    .line 277
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneCallEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneMsgEnabled="

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneMsgEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneUserCreated="

    .line 281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneUserCreated:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mTwoPhoneRegistered="

    .line 283
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneRegistered:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "--------------------"

    .line 285
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;
    .locals 3

    if-eqz p1, :cond_1

    .line 171
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconContainer()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p0, Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 176
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 132
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->isOnFeature()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 135
    const-class p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 136
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTwoPhoneSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const/4 p1, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_1
    return-void
.end method

.method public isOnFeature()Z
    .locals 0

    .line 400
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_TWO_PHONE:Z

    return p0
.end method

.method public isTwoPhoneUserCreated()Z
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 153
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 154
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public synthetic lambda$dismissUserSwitchingDialog$1$TwoPhoneModeController(I)V
    .locals 6

    .line 331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0

    :cond_0
    const-string v1, "dismissUserSwitchingDialog(), powerManager is null"

    .line 338
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    :goto_0
    const-string v1, "dismissUserSwitchingDialog() by SystemUI"

    .line 340
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    .line 341
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->dismissUserSwitchingDialog(I)V

    goto :goto_1

    :cond_1
    const-string p1, "dismissUserSwitchingDialog(), activityManager is null"

    .line 343
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured on closeUserSwitchDialog()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$new$0$TwoPhoneModeController(Landroid/net/Uri;)V
    .locals 0

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method public synthetic lambda$showDoneToast$2$TwoPhoneModeController(I)V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-lez p1, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    .line 362
    sget p1, Lcom/android/systemui/R$string;->switched_to_twophone_mode:I

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 364
    :cond_0
    sget p1, Lcom/android/systemui/R$string;->switched_to_onephone_mode:I

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 366
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    const-string p1, "DONE toast show for twophone."

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 244
    iput p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    .line 245
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 247
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 250
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    .line 252
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 255
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 257
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIcon()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 259
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mTint:I

    .line 260
    :goto_0
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public showDoneToast(I)V
    .locals 4

    .line 355
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->getConstantDelays()I

    move-result v1

    add-int/lit16 v1, v1, 0xbb8

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I\'ll post showDoneToast() after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->printLogLine(Ljava/lang/String;)V

    .line 359
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V

    int-to-long p0, v1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->considerValuesAndUpdateIcons()V

    return-void
.end method
