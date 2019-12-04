.class public Lcom/android/systemui/controller/ScreenControllerImpl;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    }
.end annotation


# instance fields
.field private final mBrightnessHandler:Landroid/os/Handler;

.field private final mInstrumentation:Landroid/app/Instrumentation;

.field private final mScreenCaptureHandler:Landroid/os/Handler;

.field private mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

.field private mTryCount:I

.field private mWinodwManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    .line 31
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/controller/ScreenControllerImpl;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/systemui/controller/ScreenControllerImpl;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/controller/ScreenControllerImpl;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/controller/ScreenControllerImpl;->hasUtteranceWindow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/controller/ScreenControllerImpl;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;)Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    return-object p1
.end method

.method private hasUtteranceWindow()Z
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const-string v1, "ScreenControllerImpl"

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    .line 197
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const-string v0, "mWMS was null"

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mWinodwManagerService:Landroid/view/IWindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 203
    :try_start_0
    invoke-interface {p0}, Landroid/view/IWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    const-string v3, "com.samsung.android.bixby.agent/com.samsung.android.bixby.agent.mainui.lightweight.LightWeightWindow"

    .line 205
    iget-object v2, v2, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "Fail to check windows by RemoteException"

    .line 210
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-string p0, "mWMS is null"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mTryCount:I

    .line 223
    new-instance v0, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    .line 224
    iget-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenCaptureHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mScreenShotRunnable:Lcom/android/systemui/controller/ScreenControllerImpl$ScreenShotRunnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "ScreenControllerImpl"

    const-string p1, "Another screenshot is doing."

    .line 226
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 97
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p3, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 98
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BarController;->getBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object p3

    .line 99
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/BrightnessBar;->getToggleSlider()Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/systemui/settings/ToggleSlider;->getSlider()Landroid/widget/SeekBar;

    move-result-object p3

    const-string v0, "max"

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    goto :goto_1

    :catch_0
    return v1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 107
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p2

    sub-int/2addr p1, p2

    .line 119
    :goto_1
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMin()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 120
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    if-ne p1, p2, :cond_5

    return v1

    :cond_5
    const-string/jumbo p2, "statusbar"

    .line 126
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 125
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-interface {p2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "ScreenControllerImpl"

    const-string v2, "expand panel RemoteException "

    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    const-wide/16 v0, 0x1f4

    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/controller/ScreenControllerImpl$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/controller/ScreenControllerImpl$1;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Landroid/widget/SeekBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    iget-object p1, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mBrightnessHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/controller/ScreenControllerImpl$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controller/ScreenControllerImpl$2;-><init>(Lcom/android/systemui/controller/ScreenControllerImpl;Lcom/android/internal/statusbar/IStatusBarService;)V

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public SetDisplayBrightness(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetDisplayBrightness level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public goHomeScreen(Landroid/content/Context;)V
    .locals 2

    .line 64
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.HOME"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public makeDisplayBrighter(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayBrighter level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public makeDisplayDarker(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeDisplayDarker level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/controller/ScreenControllerImpl;->setBrightness(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public pressBackKey(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 73
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/controller/ScreenControllerImpl;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "shareScreenShot."

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public takeScreenShot(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ScreenControllerImpl"

    const-string/jumbo v1, "takeScreenShot."

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controller/ScreenControllerImpl;->sendScreenShotBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
