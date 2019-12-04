.class public Lcom/android/systemui/statusbar/notification/NotificationColorPicker;
.super Ljava/lang/Object;
.source "NotificationColorPicker.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isNeedToInvert()Z
    .locals 4

    .line 143
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v0

    .line 144
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getNotificationTextColorInversion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isCustomColoringState()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    const p0, 0x3c23d70a    # 0.01f

    int-to-float v0, v0

    mul-float/2addr v0, p0

    .line 146
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ContrastColorUtil;->shouldInvertTextColor(FZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 147
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method private updateActions(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p0, 0x1020199

    .line 410
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    const p1, 0x1020198

    .line 412
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    .line 414
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 416
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 417
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateMessaging(Landroid/view/View;IZZ)V

    .line 605
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    const p2, 0x1020016

    .line 606
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 629
    invoke-virtual {p0, p3, p5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const p2, 0x1020554

    .line 632
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 634
    invoke-virtual {p0, p3, p5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const p2, 0x1020538

    .line 637
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 650
    invoke-virtual {p0, p2, p5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private updateHeader(Landroid/view/View;IZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const p3, 0x1020006

    .line 340
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 342
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 346
    instance-of p3, p1, Landroid/view/NotificationHeaderView;

    if-eqz p3, :cond_2

    .line 347
    move-object p3, p1

    check-cast p3, Landroid/view/NotificationHeaderView;

    .line 348
    invoke-virtual {p3, p2}, Landroid/view/NotificationHeaderView;->setOriginalIconColor(I)V

    .line 349
    invoke-virtual {p3, p2}, Landroid/view/NotificationHeaderView;->setOriginalNotificationColor(I)V

    .line 352
    :cond_2
    sget p3, Lcom/android/systemui/R$id;->overflow_number:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 354
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p3, 0x10201bf

    .line 357
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    .line 359
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const p3, 0x10202d5

    .line 362
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    .line 364
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const p3, 0x10202d4

    .line 367
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_6

    .line 369
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const p3, 0x10202d3

    .line 372
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_7

    .line 374
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const p3, 0x10202d2

    .line 377
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_8

    .line 379
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const p3, 0x102055b

    .line 382
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_9

    .line 384
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    const p3, 0x1020557

    .line 387
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/DateTimeView;

    if-eqz p3, :cond_a

    .line 389
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_a
    const v1, 0x1020219

    .line 392
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    instance-of v2, v1, Landroid/widget/Chronometer;

    if-eqz v2, :cond_b

    .line 394
    check-cast v1, Landroid/widget/Chronometer;

    if-eqz p3, :cond_b

    .line 396
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_b
    const p0, 0x1020280

    .line 400
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_c

    .line 402
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToInvert()Z

    move-result v3

    if-nez v3, :cond_1

    move p2, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isCustomColoringState()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p2, v1

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->iconColor:I

    .line 114
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v0, 0x66

    invoke-interface {p1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v0, 0x106033d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_6

    .line 121
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    invoke-static {p0, p1, v2}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p1

    :cond_6
    if-eqz p2, :cond_7

    .line 125
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 126
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 127
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 131
    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x2

    .line 132
    aget p2, v1, p1

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v0

    aput p2, v1, p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    aget v2, v1, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, v1, p1

    .line 134
    invoke-static {p0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0

    :cond_7
    return p1
.end method

.method public getGutsTextColor(I)I
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 201
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p1

    const/16 v2, 0xcc

    if-eqz p1, :cond_0

    .line 202
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p0

    invoke-static {p0, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 193
    :cond_2
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    goto :goto_1

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :cond_4
    :goto_1
    return v1
.end method

.method public getNotificationBgColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getNotificationBgColor(IZ)I

    move-result p0

    return p0
.end method

.method public getNotificationBgColor(IZ)I
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getNotificationNormalBgColor(I)I

    move-result p1

    .line 92
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 93
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 p1, 0x69

    invoke-interface {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 94
    :cond_0
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 p1, 0x68

    invoke-interface {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p0

    :goto_0
    move p1, p0

    goto :goto_1

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1060338

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_2
    :goto_1
    return p1
.end method

.method public getNotificationNormalBgColor(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_material_background_dimmed_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextColor(IZ)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToInvert()Z

    move-result v1

    if-nez v1, :cond_0

    move p2, v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/16 v2, 0x67

    if-eqz p1, :cond_5

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    const p2, 0x10601db

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p1

    .line 233
    :goto_1
    const-class p2, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 235
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p0

    const/16 p1, 0xcc

    invoke-static {p0, p1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    goto :goto_2

    .line 236
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1060339

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_4
    :goto_2
    return p1

    .line 223
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6

    const p2, 0x10601d8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    :cond_6
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p1

    .line 224
    :goto_3
    const-class p2, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 225
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result p1

    goto :goto_4

    .line 226
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x106033f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_8
    :goto_4
    return p1
.end method

.method public hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z
    .locals 0

    .line 152
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCustomColoringState()Z
    .locals 1

    .line 174
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 183
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    return p0
.end method

.method public isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 167
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    if-eqz p2, :cond_1

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToInvert()Z

    move-result v0

    if-nez v0, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move/from16 v9, p2

    .line 251
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v8, v0, :cond_3

    .line 255
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v2, :cond_2

    .line 257
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 258
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v6, v1, v9}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 267
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v10

    .line 268
    invoke-virtual {v6, v7, v9}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v11

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 273
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCurrentHeaderView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {v6, v0, v11, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    .line 277
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    move v13, v8

    :goto_2
    if-ge v13, v12, :cond_8

    .line 279
    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v1, :cond_7

    .line 281
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    .line 283
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v14

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v15

    .line 285
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v16

    .line 287
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v4

    const/4 v2, 0x1

    .line 289
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v17

    const/4 v2, 0x2

    .line 291
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    .line 307
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v0, p0

    move v2, v11

    move v3, v10

    move v5, v9

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    move v2, v11

    move v3, v10

    move v5, v9

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v11

    move v3, v10

    move-object/from16 v4, v17

    move v5, v9

    .line 312
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    move-object/from16 v1, v16

    move-object/from16 v4, v18

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    .line 314
    invoke-virtual {v6, v14, v9}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isNeedToInvert()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    .line 435
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateActions(Landroid/view/View;I)V

    .line 437
    instance-of p5, p4, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    if-eqz p5, :cond_2

    const p5, 0x10201df

    .line 438
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    if-eqz p5, :cond_2

    const/4 v0, 0x1

    .line 452
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 577
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Z)V

    return-void
.end method

.method public updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 333
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    return-void
.end method

.method public updateMessaging(Landroid/view/View;IZZ)V
    .locals 4

    .line 582
    instance-of v0, p1, Lcom/android/internal/widget/MessagingLayout;

    if-eqz v0, :cond_1

    .line 583
    check-cast p1, Lcom/android/internal/widget/MessagingLayout;

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 587
    invoke-virtual {p0, v1, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v2

    const/4 v3, 0x1

    .line 588
    invoke-virtual {p0, v3, p4}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 591
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/widget/MessagingGroup;

    if-eqz p4, :cond_0

    .line 593
    invoke-virtual {p4, v2, p0}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    if-eqz p3, :cond_0

    .line 594
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateSingleLine(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->SINGLELINE_TITLE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/notification/NotificationColorSet;->SINGLELINE_TEXT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
