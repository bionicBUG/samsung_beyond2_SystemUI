.class public Lcom/android/systemui/util/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/DesktopManager$Callback;
    }
.end annotation


# static fields
.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/DesktopManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

.field private mDesktopMode:I

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

.field private mIsTouchpadEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 38
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c6

    .line 55
    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/android/systemui/util/DesktopManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$1;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 111
    new-instance v0, Lcom/android/systemui/util/DesktopManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$2;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lcom/android/systemui/util/DesktopManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$3;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    .line 178
    new-instance v0, Lcom/android/systemui/util/DesktopManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$4;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Lcom/android/systemui/util/DesktopManager$5;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$5;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    .line 207
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    .line 208
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 210
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p1, :cond_0

    .line 211
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 213
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBarCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/util/DesktopManager;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/util/DesktopManager;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyDismissKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/util/DesktopManager;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManager;->mIsTouchpadEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/DesktopManager;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyLockout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleIBRunningStateChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleIrisRunningStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleFaceRunningStateChanged(Z)V

    return-void
.end method

.method private controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 350
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 351
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 352
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 355
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCallers()Ljava/lang/String;
    .locals 1

    const/4 p0, 0x3

    const-string v0, " "

    .line 329
    invoke-static {p0, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 334
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 335
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "DesktopManager"

    const-string v0, "Failed to get settings"

    .line 344
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method private handleFaceRunningStateChanged(Z)V
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFaceRunningStateChanged-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 606
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onFaceRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleIBRunningStateChanged(Z)V
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIBRunningStateChanged-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 592
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onIBRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleIrisRunningStateChanged(Z)V
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIrisRunningStateChanged-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 599
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onIrisRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleNotifyDismissKeyguard()Z
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyDismissKeyguard"

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 576
    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDismissKeyguard()V

    goto :goto_0

    .line 578
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onNotifyDismissKeyguard()Z

    move-result p0

    return p0
.end method

.method private handleNotifyLockout()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyLockout"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 585
    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager$Callback;->onLockout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x28

    if-eqz p2, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 262
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 266
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    const/16 p2, 0x32

    if-ne p1, p2, :cond_5

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    :cond_5
    :goto_0
    return-void
.end method

.method private startSystemUIDesktopService()V
    .locals 4

    const-string v0, "DesktopManager"

    const-string v1, "startSystemUIDesktopService"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.desktopsystemui"

    const-string v3, "com.samsung.desktopsystemui.SystemUIDesktopService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v3, 0x2000001

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private stopSystemUIDesktopService()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "stopSystemUIDesktopService"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const/16 v0, 0x2c6

    .line 314
    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    .line 315
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 316
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c8

    .line 322
    iput p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x2c7

    .line 318
    iput p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDesktopBarConnected()Z
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 237
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualView()Z
    .locals 1

    .line 245
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandalone()Z
    .locals 1

    .line 241
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBiometricLockoutChanged(ZI)V
    .locals 3

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBiometricLockoutChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyBiometricLockoutChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyDismissKeyguard()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyDismissKeyguard"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyDismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFaceAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationFailed()V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyFaceAuthenticationError"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationRunningStateChange(I)V
    .locals 3

    const-string v0, "DesktopManager"

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFaceAuthenticationRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "notifyFaceAuthenticationRunningStateChange failed"

    .line 513
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyFingerprintAuthFailed()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyFingerprintAuthFailed"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintAuthFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintAuthenticated(II)V
    .locals 2

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyFingerprintAuthFailed"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintAuthenticated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintError(ILjava/lang/String;)V
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyFingerprintError"

    .line 441
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintHelp(ILjava/lang/String;)V
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyFingerprintAuthFailed"

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyIBAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIBAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyIBAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyIBRunningStateChange(I)V
    .locals 3

    const-string v0, "DesktopManager"

    .line 484
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nnotifyIBRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyIBRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "notifyIBRunningStateChange failed"

    .line 489
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIrisAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyIrisAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyIrisRunningStateChange(I)V
    .locals 3

    const-string v0, "DesktopManager"

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIrisRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyIrisRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Face failed"

    .line 501
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "notifyKeyguardLockout"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyLockout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyRemoteLockState(Z)V
    .locals 3

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRemoteLockState-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyRemoteLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifySimStateInfo(III)V
    .locals 4

    const-string v0, " "

    .line 543
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopManager"

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimStateInfo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/desktop/IDesktopBar;->notifySimStateInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifySimStateInitInfo(IIIZ)V
    .locals 4

    const-string v0, " "

    .line 532
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopManager"

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimStateInitInfo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/desktop/IDesktopBar;->notifySimStateInitInfo(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startExitKeyguardAnimationIfNeeded()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string v1, "startExitKeyguardAnimationIfNeeded"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->startKeyguardExitAnimationIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
