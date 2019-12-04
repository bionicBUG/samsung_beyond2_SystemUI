.class public Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;
.super Ljava/lang/Object;
.source "SecQSColoringPresenterImpl.java"

# interfaces
.implements Lcom/android/systemui/qscoloring/SecQSColoringPresenter;
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

.field private mIndicatorAlpha:F

.field private mIsForceApplyBlurEffect:Z

.field private mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIsForceApplyBlurEffect:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 249
    iput v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIndicatorAlpha:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "----- QSColoring (QsTuner, QuickStar)-----------"

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   isPluginConnected       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isPluginConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   isQSColoringTurnedOn    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   isBlurEffectTurnedOn    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isBlurEffectTurnedOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   isForceApplyBlurEffect  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isForceApplyBlurEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   getPanelBackgroundAlpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getPanelBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   getPanelBackgroundColor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getPanelBackgroundColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string p0, "-----------------------------------------------------"

    .line 96
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBlurEffectAmount()F
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isBlurEffectTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    if-nez p0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->getBlurAmount()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getColor(I)I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getPanelBackgroundAlpha()I
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->getPanelBackgroundAlpha()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xff

    return p0
.end method

.method public getPanelBackgroundColor()I
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->getColor(I)I

    move-result p0

    return p0

    .line 238
    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 239
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicBackground:I

    return p0

    :cond_1
    return v1
.end method

.method protected getQsFrame()Landroid/view/View;
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    const-string v0, "[QuickStar]SecQSColoringPresenterImpl"

    const-string v1, "init()"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 76
    new-instance p1, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-direct {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    .line 77
    new-instance p1, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    return-void
.end method

.method public isBlurEffectTurnedOn()Z
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->getBlurAmount()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isForceApplyBlurEffect()Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIsForceApplyBlurEffect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyPanelBackgroundOpaque()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getPanelBackgroundAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPluginConnected()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->isPluginConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQSColoringTurnedOn()Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mPluginMediator:Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->isQSColoringTurnedOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$refreshAllFunctions$0$SecQSColoringPresenterImpl()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBrightnessMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    return-void
.end method

.method public onPanelHeightUpdated(ZZF)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setFullyExpanded(Z)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setFullyCollapsed(Z)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-virtual {p0, p3}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur(F)V

    return-void
.end method

.method public refreshAllFunctions()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAllFunctions() isTurnedOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", (mStatusBar == null)?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SecQSColoringPresenterImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateQuickPanelButtonUsers()V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getQsFrame()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isBlurEffectTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-virtual {v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur()V

    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    invoke-virtual {v0}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->clearBlur()V

    .line 139
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUiModeChanged()V

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onUiModeChanged()V

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->onUiModeChanged()V

    .line 155
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBrightnessMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBrightnessMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    .line 157
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qscoloring/-$$Lambda$SecQSColoringPresenterImpl$_l1p43RFcKAVHWkE3pYdxJoerLU;

    invoke-direct {v1, p0}, Lcom/android/systemui/qscoloring/-$$Lambda$SecQSColoringPresenterImpl$_l1p43RFcKAVHWkE3pYdxJoerLU;-><init>(Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method public setAnimationOverlapped(Z)V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setAnimationOverlapped(Z)V

    :cond_0
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setBouncerShowing(Z)V

    :cond_0
    return-void
.end method

.method public setForceApplyBlurEffect(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIsForceApplyBlurEffect:Z

    return-void
.end method

.method public setHeightAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setHeightAnimator(Landroid/animation/ValueAnimator;Z)V

    :cond_0
    return-void
.end method

.method public setQsExpansionAnimator(Landroid/animation/ValueAnimator;Z)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->setQsAnimator(Landroid/animation/ValueAnimator;Z)V

    :cond_0
    return-void
.end method

.method public updateBlurEffect(F)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateBlur(F)V

    :cond_0
    return-void
.end method

.method public updateCommonColorDraw(Landroid/view/ViewGroup;)V
    .locals 1

    const/16 v0, 0x14

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->updateCommonColorDraw(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public updateCommonColorDraw(Landroid/view/ViewGroup;I)V
    .locals 9

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_d

    if-gez p2, :cond_0

    goto/16 :goto_2

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getInstance()Lcom/android/systemui/qs/panelcolor/PanelColorManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/panelcolor/PanelColorManager;->getColorModel()Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    move-result-object v0

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    .line 276
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 278
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 280
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 281
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->updateCommonColorDraw(Landroid/view/ViewGroup;I)V

    .line 283
    :cond_3
    instance-of v3, v2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_4

    .line 284
    check-cast v2, Landroid/widget/RadioButton;

    iget v3, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemActive:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 285
    :cond_4
    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_5

    .line 286
    check-cast v2, Landroid/widget/ImageButton;

    iget v3, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto/16 :goto_1

    .line 287
    :cond_5
    instance-of v3, v2, Landroid/widget/Switch;

    if-eqz v3, :cond_6

    .line 288
    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x34

    invoke-virtual {p0, v4}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 289
    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x35

    invoke-virtual {p0, v3}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_1

    .line 290
    :cond_6
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 291
    check-cast v2, Landroid/widget/TextView;

    iget v3, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 292
    :cond_7
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 293
    check-cast v2, Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 294
    :cond_8
    instance-of v3, v2, Landroid/widget/SeekBar;

    if-eqz v3, :cond_c

    .line 295
    check-cast v2, Landroid/widget/SeekBar;

    const/4 v3, 0x5

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getColor(I)I

    move-result v3

    const/4 v4, 0x6

    .line 297
    invoke-virtual {p0, v4}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->getColor(I)I

    move-result v4

    .line 298
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_b

    const v6, 0x102000d

    .line 300
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 302
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 303
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_9
    const v6, 0x102000f

    .line 305
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 307
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 308
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_a
    const/high16 v6, 0x1020000

    .line 310
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 312
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 313
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 316
    :cond_b
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFluidColor(I)V

    .line 317
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 318
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_2
    return-void
.end method

.method public updateFloatingShortcutVisibility(Z)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateFloatingShortcutVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateIndicatorBackgroundAlpha(F)V
    .locals 3

    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 254
    :goto_0
    iget v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIndicatorAlpha:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getIndicatorBgColor()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getIndicatorBgColorForSideScreen()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 256
    :cond_2
    sget-boolean v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIndicatorBackgroundAlpha(alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIndicatorAlpha:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " >> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[QuickStar]SecQSColoringPresenterImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_3
    iput v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mIndicatorAlpha:F

    .line 258
    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 259
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBgAlpha(F)V

    :cond_4
    return-void
.end method

.method public updateMirrorVisibility(Ljava/lang/Boolean;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mBlurController:Lcom/android/systemui/qscoloring/SecQSColoringBlurController;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringBlurController;->updateMirrorVisibility(Z)V

    :cond_0
    return-void
.end method

.method public writeSettingValue(Ljava/lang/String;I)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeSettingValue(name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[QuickStar]SecQSColoringPresenterImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
