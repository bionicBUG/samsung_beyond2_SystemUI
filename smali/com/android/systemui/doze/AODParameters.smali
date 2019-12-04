.class public Lcom/android/systemui/doze/AODParameters;
.super Ljava/lang/Object;
.source "AODParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/AODParameters$SettingsObserver;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDozeAlwaysOn:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsAodShowing:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Lcom/android/systemui/doze/AODParameters$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mContext:Landroid/content/Context;

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/android/systemui/doze/AODParameters$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;-><init>(Lcom/android/systemui/doze/AODParameters;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsObserver:Lcom/android/systemui/doze/AODParameters$SettingsObserver;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsObserver:Lcom/android/systemui/doze/AODParameters$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/AODParameters;)Landroid/content/ContentResolver;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/doze/AODParameters;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/doze/AODParameters;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/doze/AODParameters;->mIsAodShowing:Z

    return p1
.end method


# virtual methods
.method public getAlwaysOn()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->needDozeAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 33
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public isAodShowing()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mIsAodShowing:Z

    return p0
.end method

.method public updateDozeAlwaysOn()V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsObserver:Lcom/android/systemui/doze/AODParameters$SettingsObserver;

    if-eqz p0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/android/systemui/doze/AODParameters$SettingsObserver;->access$000(Lcom/android/systemui/doze/AODParameters$SettingsObserver;)V

    :cond_0
    return-void
.end method
