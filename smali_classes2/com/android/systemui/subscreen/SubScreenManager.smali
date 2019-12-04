.class public Lcom/android/systemui/subscreen/SubScreenManager;
.super Ljava/lang/Object;
.source "SubScreenManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/subscreen/SubScreenManager$SubScreenPresentation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/subscreen/PluginSubScreen;",
        ">;",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = true


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayService:Landroid/hardware/display/DisplayManager;

.field private final mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mIsPluginConnected:Z

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private mPluginContext:Landroid/content/Context;

.field private mPresentation:Landroid/app/Presentation;

.field private mShowing:Z

.field private mSubScreenDecorView:Landroid/view/ViewGroup;

.field private mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 72
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/subscreen/SubScreenManager$1;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 82
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 84
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/media/MediaRouter;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayService:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    return-void
.end method

.method private isSubScreenUIShowable(Landroid/view/Display;)Z
    .locals 1

    const-string p0, "SubScreenManager"

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 139
    sget-boolean p1, Lcom/android/systemui/subscreen/SubScreenManager;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "Cannot show SubScreen UI on null display"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_3

    .line 143
    sget-boolean p1, Lcom/android/systemui/subscreen/SubScreenManager;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Do not show SubScreen UI on the default display"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private showPresentation(Landroid/view/Display;)Z
    .locals 5

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenManager;->isSubScreenUIShowable(Landroid/view/Display;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    sget-boolean v0, Lcom/android/systemui/subscreen/SubScreenManager;->DEBUG:Z

    const-string v2, "SubScreenManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubScreen UI enabled on display: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    if-nez v0, :cond_3

    .line 162
    new-instance v0, Lcom/android/systemui/subscreen/SubScreenManager$SubScreenPresentation;

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mInjectableInflater:Lcom/android/systemui/util/InjectionInflationController;

    invoke-direct {v0, v3, p1, v4}, Lcom/android/systemui/subscreen/SubScreenManager$SubScreenPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/util/InjectionInflationController;)V

    .line 164
    const-class p1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 166
    const-class v4, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p1, p0, v4, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 167
    iput-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 171
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Invalid display:"

    .line 173
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 177
    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    .line 178
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return v3

    :cond_3
    return v1
.end method

.method private startSubScreen()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenDecorView:Landroid/view/ViewGroup;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenDecorView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onSubUIStarted(Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private updatePluginListener()V
    .locals 3

    .line 198
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    .line 199
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 201
    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    :cond_0
    if-eqz v0, :cond_1

    .line 204
    const-class v1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenManager;->onPluginConnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SubScreenManager"

    const-string v1, "onPluginConnected() "

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 95
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/doze/PluginAODManager;->setSubScreenPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 211
    sget-boolean v0, Lcom/android/systemui/subscreen/SubScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SubScreenManager"

    const-string v2, "show"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/subscreen/SubScreenManager;->updateDisplays(Z)Z

    .line 214
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mShowing:Z

    return-void
.end method

.method protected updateDisplays(Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayService:Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 126
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    .line 127
    invoke-direct {p0, v3}, Lcom/android/systemui/subscreen/SubScreenManager;->showPresentation(Landroid/view/Display;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move v2, v0

    .line 131
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->dismiss()V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mPresentation:Landroid/app/Presentation;

    :cond_2
    return v2
.end method
