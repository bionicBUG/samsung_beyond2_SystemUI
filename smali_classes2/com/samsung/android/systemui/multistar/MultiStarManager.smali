.class public Lcom/samsung/android/systemui/multistar/MultiStarManager;
.super Ljava/lang/Object;
.source "MultiStarManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/multistar/PluginMultiStarManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;,
        Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;
    }
.end annotation


# static fields
.field private static PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String; = "key_clear_settings"

.field private static PREF_MULTISTAR:Ljava/lang/String; = "pref_multistar"

.field private static TAG:Ljava/lang/String; = "MultiStarManager"

.field private static mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar; = null

.field public static sRecentKeyConsumed:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockedStackListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

.field private mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

.field private mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

.field private mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

.field private mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/systemui/multistar/MultiStarSystemProxyImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/stackdivider/Divider;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 55
    new-instance p2, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockedStackListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    .line 57
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockedStackListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    invoke-interface {p2, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 60
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_0
    new-instance p2, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V

    iput-object p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    .line 64
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiWindowEventListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$MultiWindowEventListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->clearPrevAppSettings(Landroid/content/Context;)V

    .line 70
    const-class p1, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginManager;

    new-instance p2, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$1;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    const-class p0, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, v0}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;
    .locals 0

    .line 27
    sput-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mMultiStarSystemFacade:Lcom/samsung/systemui/splugins/multistar/PluginMultiStarSystemProxy;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginDockedStackListener:Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDockedStackListener:Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;)Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiWindowEventListener:Lcom/samsung/systemui/splugins/multistar/PluginMultiWindowEventListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/systemui/multistar/MultiStarManager;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->setSnapWindowEnabled(Z)V

    return-void
.end method

.method private clearPrevAppSettings(Landroid/content/Context;)V
    .locals 1

    .line 102
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_MULTISTAR:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 103
    sget-object p1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 104
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setPreQMultiResumeInProcessEnabled(Z)V

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/systemui/multistar/MultiStarManager;->PREF_KEY_CLEAR_SETTINGS:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setSnapWindowEnabled(Z)V
    .locals 2

    .line 110
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSnapWindowEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDividerView()Lcom/samsung/systemui/splugins/multistar/PluginDividerView;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    return-object p0
.end method

.method public getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    .line 155
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->getSplitTargetTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 143
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onLongPressRecents()V
    .locals 0

    .line 149
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->onLongPressRecents()Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->sRecentKeyConsumed:Z

    :cond_0
    return-void
.end method

.method public setCustomDensityEnabled(Z)V
    .locals 0

    .line 265
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->setCustomDensityEnabled(Z)V

    return-void
.end method

.method public setDividerBackgroundColor(I)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/Divider;->setFocusedFrameBackgroundColor(I)V

    return-void
.end method

.method public showDividerPanelView(ZZZ)V
    .locals 0

    .line 131
    sget-object p0, Lcom/samsung/android/systemui/multistar/MultiStarManager;->mPluginMultiStar:Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/multistar/PluginMultiStar;->showDividerPanelView(ZZZ)V

    :cond_0
    return-void
.end method
