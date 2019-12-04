.class public Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;
.super Ljava/lang/Object;
.source "PanelColorManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorManager;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static sInstance:Lcom/android/systemui/qs/panelcolor/PanelColorManager;


# instance fields
.field private mCurrentNightModeMask:I

.field private mParent:Landroid/view/ViewGroup;

.field private mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->sInstance:Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;

    invoke-direct {v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->sInstance:Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->sInstance:Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    return-object v0
.end method

.method private isOpenThemeOn(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    .line 49
    iput-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    .line 50
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->makeStrategy()Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    iget-object v1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->mColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/res/Configuration;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    .line 39
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 40
    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    iput p2, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mCurrentNightModeMask:I

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init() coloring:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->isQSColoringModeOn()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PanelColorManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->makeStrategy()Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->execute(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected isNightModeOn()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isQSColoringModeOn()Z
    .locals 0

    .line 72
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p0

    return p0
.end method

.method protected makeStrategy()Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->isQSColoringModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringStrategy;

    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringStrategy;-><init>()V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->isOpenThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance p0, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;

    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;-><init>()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->isNightModeOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 60
    new-instance p0, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;

    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;-><init>()V

    goto :goto_0

    .line 62
    :cond_2
    new-instance p0, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;

    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;-><init>()V

    :goto_0
    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->isQSColoringModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mCurrentNightModeMask:I

    if-eq v0, p1, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigChanged() UI_MODE changed ->  old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mCurrentNightModeMask:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanelColorManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput p1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mCurrentNightModeMask:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->makeStrategy()Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mStrategy:Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;

    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorManagerImpl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->execute(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method
