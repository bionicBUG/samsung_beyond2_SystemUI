.class final Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RotationLockDetailAdapter"
.end annotation


# instance fields
.field private mButtonOnNavigationBarOption:Landroid/view/View;

.field private mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

.field private mCallScreenOption:Landroid/view/View;

.field private mHomeScreenOption:Landroid/view/View;

.field private mLockScreenOption:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;Lcom/android/systemui/qs/tiles/RotationLockTile$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setHomeScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setLockScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->setCallScreenRotationAllowed(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)Lcom/android/systemui/qs/QSSwitch;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    return-object p0
.end method

.method private setCallScreenRotationAllowed(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1000(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setHomeScreenRotationAllowed(Z)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$600(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLockScreenRotationAllowed(Z)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$800(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateButtonOnNavigationBarOption(Z)V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 483
    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$10;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$11;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 511
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 327
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1100(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->sec_qs_detail_rotation:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 328
    sget p3, Lcom/android/systemui/R$id;->rotation_summary:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 329
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mSummary:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_two_toggle_detail_summary_for_tablet:I

    goto :goto_0

    .line 330
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_two_toggle_detail_summary:I

    .line 329
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 332
    sget-boolean p3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROTATIONLOCK_TILE_MANUAL_ROTATION:Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p3, :cond_2

    .line 333
    sget p3, Lcom/android/systemui/R$id;->button_on_navigation_bar_option_parent:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    .line 334
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->button_on_navigation_bar_option:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setClickable(Z)V

    .line 335
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->button_on_navigation_bar_option:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 337
    sget v4, Lcom/android/systemui/R$string;->quick_settings_manual_rotation_button_on_navigation_bar_title:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->title_summary:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 340
    sget v4, Lcom/android/systemui/R$string;->quick_settings_manual_rotation_button_on_navigation_bar_summary:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 341
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSSwitch;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    .line 343
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 344
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 345
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {p3, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    xor-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    goto :goto_1

    .line 350
    :cond_2
    sget p3, Lcom/android/systemui/R$id;->quick_settings_manual_rotation_category_parent:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    sget p3, Lcom/android/systemui/R$id;->button_on_navigation_bar_option_parent:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :goto_1
    sget p3, Lcom/android/systemui/R$id;->home_screen:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    .line 356
    sget p3, Lcom/android/systemui/R$id;->lock_screen:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    .line 357
    sget p3, Lcom/android/systemui/R$id;->call_screen:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    .line 358
    sget-boolean p3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p3, :cond_3

    .line 359
    sget p1, Lcom/android/systemui/R$id;->quick_settings_rotation_category_parent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    .line 366
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 367
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_home_screen:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/QSSwitch;

    .line 369
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v4

    invoke-virtual {p3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 370
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    invoke-virtual {p3, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 373
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mHomeScreenOption:Landroid/view/View;

    new-instance v5, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;

    invoke-direct {v5, p0, p3}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v4, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {p3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 388
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p3

    .line 390
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p3, :cond_5

    .line 391
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/pluginlock/PluginLockManager;->isRotateMenuHide()Z

    move-result p3

    if-nez p3, :cond_5

    move p3, v0

    goto :goto_2

    :cond_5
    move p3, v1

    :cond_6
    :goto_2
    if-eqz p3, :cond_9

    .line 397
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1500(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_lock_screen:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSSwitch;

    .line 400
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 403
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 404
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isVideoWallpaper()Z

    move-result p1

    if-nez p1, :cond_8

    .line 405
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    new-instance p3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    new-instance p1, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 419
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 421
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 422
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    const p1, 0x3ecccccd    # 0.4f

    .line 423
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    .line 426
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mLockScreenOption:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    sget p3, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 430
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1700(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->quick_settings_rotation_detail_call_screen:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    sget p3, Lcom/android/systemui/R$id;->title_switch:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSSwitch;

    .line 432
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 433
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 435
    :cond_a
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$400(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 436
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->mCallScreenOption:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$8;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance p3, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$9;-><init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$200(Lcom/android/systemui/qs/tiles/RotationLockTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_rotation_lock_auto_rotate:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$300(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$1900(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isRotationLockTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2000(Lcom/android/systemui/qs/tiles/RotationLockTile;)V

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2100(Lcom/android/systemui/qs/tiles/RotationLockTile;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    const/4 v1, 0x0

    const-string/jumbo v2, "toggle"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->access$2200(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ROTATIONLOCK_TILE_MANUAL_ROTATION:Z

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 469
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    :cond_1
    return-void
.end method
