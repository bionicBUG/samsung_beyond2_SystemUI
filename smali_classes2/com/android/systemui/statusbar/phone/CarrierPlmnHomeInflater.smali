.class public Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierPlmnHomeInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$CarrierPlmnInterface;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;,
        Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private mCurrentVisibilityModel:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;

.field private mHandler:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsDisplayTimeoutFlag:Z

.field private mIsHeadsUpPinned:Z

.field private mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mPlmnView:Landroid/widget/TextView;

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    .line 67
    new-instance p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 76
    new-instance p1, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHandler:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

    return-void
.end method

.method private findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 166
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CarrierPlmnHomeInflater"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    .line 287
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 290
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0

    .line 283
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method private getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 301
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0

    .line 294
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    return-object p0
.end method

.method private setPlmnVisibility()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility(Z)V

    return-void
.end method

.method private setPlmnVisibility(Z)V
    .locals 14

    .line 238
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const-string v1, "CarrierPlmnHomeInflater"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 240
    const-class v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 241
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    .line 242
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHidden()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 243
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 244
    new-instance v13, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsDisplayTimeoutFlag:Z

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsHeadsUpPinned:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->hasNotiIconsOnIndicator()Z

    move-result v10

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 245
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    move-object v4, v13

    move-object v5, p0

    move v6, p1

    move v7, v3

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;ZZZZZLjava/lang/CharSequence;I)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentVisibilityModel:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;

    if-eqz p1, :cond_1

    invoke-virtual {v13, p1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->isEquals(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 247
    :cond_1
    iput-object v13, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mCurrentVisibilityModel:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPlmnVisibility() "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$VisibilityModel;->getLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    xor-int/lit8 p1, v3, 0x1

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setVisibilityForObstacles(ZLandroid/view/View;)V

    goto :goto_2

    :cond_4
    const-string p0, "mPlmnView is null"

    .line 254
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateTextSize()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_1

    .line 189
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getPixelSize(I)I

    move-result v0

    .line 190
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 191
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-class v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 194
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 6

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 90
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    const-string v2, "CarrierPlmnHomeInflater"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_left_clock_end_padding:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updatePlmnByNotiIcon()V

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 109
    :cond_1
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setCarrierPlmnInterface(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$CarrierPlmnInterface;)V

    .line 118
    :cond_2
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    :cond_3
    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->findAndDetachCarrierInformationView(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setCarrierPlmnInterface(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$CarrierPlmnInterface;)V

    .line 150
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mNotiIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 154
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 157
    :cond_2
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierPlmnHomeInflater"

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierPlmnHomeInflater"

    return-object p0
.end method

.method protected getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected hasNotiIconsOnIndicator()Z
    .locals 3

    .line 305
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 306
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCountIconDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->hasNotiIconsOnIndicator()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 312
    :cond_1
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    const-class p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 313
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->hasLockNotiIcons()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method protected hideStatusBarCarrierLabel()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideStatusBarCarrierLabel() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierPlmnHomeInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsDisplayTimeoutFlag:Z

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->hasNotiIconsOnIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility(Z)V

    :cond_2
    return-void
.end method

.method protected isInWhiteList(Landroid/view/View;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationCountView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 272
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInWhiteList(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public needToAttachView()Z
    .locals 0

    .line 220
    sget-boolean p0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_PLMN:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 225
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 226
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 227
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 229
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    :goto_0
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 378
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsHeadsUpPinned:Z

    .line 379
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsHeadsUpPinned:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsDisplayTimeoutFlag:Z

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updatePlmnByNotiIcon()V

    return-void
.end method

.method protected setVisibilityForObstacles(ZLandroid/view/View;)V
    .locals 0

    .line 260
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->setVisibilityForObstacles(ZLandroid/view/View;)V

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->getNotificationIconAreaController()Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    :cond_0
    return-void
.end method

.method protected showStatusBarCarrierLabel()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStatusBarCarrierLabel() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierPlmnHomeInflater"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->hasNotiIconsOnIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsDisplayTimeoutFlag:Z

    .line 326
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mHandler:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->setHideTimer()V

    :cond_2
    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 0

    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mPlmnView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updatePlmnByNotiIcon()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->hasNotiIconsOnIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsDisplayTimeoutFlag:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->mIsHeadsUpPinned:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility(Z)V

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->setPlmnVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;->updateTextSize()V

    return-void
.end method
