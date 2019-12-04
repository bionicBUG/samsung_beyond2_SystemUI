.class public Lcom/android/systemui/volume/util/StatusBarWrapper;
.super Ljava/lang/Object;
.source "StatusBarWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardManagerWrapper:Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/LogWrapper;Lcom/android/systemui/volume/util/KeyguardManagerWrapper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mKeyguardManagerWrapper:Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    .line 30
    iget-object p1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public getCutoutHeight()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public startSettingsActivity()V
    .locals 4

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SecVolumeLimiterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14000000

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mKeyguardManagerWrapper:Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/volume/util/StatusBarWrapper;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSettingsActivity : Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarWrapper"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
