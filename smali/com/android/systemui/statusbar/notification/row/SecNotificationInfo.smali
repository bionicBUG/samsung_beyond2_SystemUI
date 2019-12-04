.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;,
        Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;,
        Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$NotificationInfoAction;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mChannelEnabledSwitch:Landroid/widget/Switch;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mExitReason:Ljava/lang/String;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsBlocked:Z

.field private mIsBlockedWhenStarting:Z

.field private mIsDeviceProvisioned:Z

.field private mIsForBlockingHelper:Z

.field private mIsForeground:Z

.field private mIsMinimized:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNegativeUserSentiment:Z

.field private mNumUniqueChannelsInRow:I

.field private mOnSaveClick:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field private mStartingChannelImportance:I

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mWasShownHighPriority:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$pC8xKKFEsdy9-K25e70YZGVSOps;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$pC8xKKFEsdy9-K25e70YZGVSOps;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSaveClick:Landroid/view/View$OnClickListener;

    .line 164
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    const-string p1, "blocking_helper_dismissed"

    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    return-object p1
.end method

.method private bindButtons()V
    .locals 3

    .line 370
    sget v0, Lcom/android/systemui/R$id;->more_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 372
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    sget v2, Lcom/android/systemui/R$string;->notification_info_detail_button:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 377
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    :cond_1
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    sget p0, Lcom/android/systemui/R$string;->notification_info_save_button:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private bindChannelName()V
    .locals 3

    .line 428
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    .line 430
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 5

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 307
    :cond_0
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->pkgicon:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget v1, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 316
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 315
    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 323
    :cond_1
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 329
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private bindPrompt()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 337
    sget v0, Lcom/android/systemui/R$id;->channel_enabled_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    .line 339
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlockedWhenStarting:Z

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlockedWhenStarting:Z

    xor-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 341
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 342
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$1CMUnPG64FpMh5ddfMwzRKOhhIk;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$1CMUnPG64FpMh5ddfMwzRKOhhIk;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindChannelName()V

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateSecondaryText()V

    .line 355
    sget v0, Lcom/android/systemui/R$id;->block_radio_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 357
    sget v0, Lcom/android/systemui/R$id;->block_radio_alert:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 358
    sget v3, Lcom/android/systemui/R$string;->notification_info_radio_alert_text:I

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 359
    sget v0, Lcom/android/systemui/R$id;->block_radio_silent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 360
    sget v3, Lcom/android/systemui/R$string;->notification_info_radio_silent_text:I

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 362
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 363
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_5

    sget v1, Lcom/android/systemui/R$id;->block_radio_alert:I

    goto :goto_4

    :cond_5
    sget v1, Lcom/android/systemui/R$id;->block_radio_silent:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz p0, :cond_6

    const/16 v2, 0x8

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method private getChannelName()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 618
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSelectedImportance()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 409
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    return p0
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 414
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 416
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$i9qSlx_VRfNUfNC-nONFnHKI-aw;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationInfo$i9qSlx_VRfNUfNC-nONFnHKI-aw;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private importanceChangeLogMaker()Landroid/metrics/LogMaker;
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 631
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 632
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private isBlocked()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlocked:Z

    return p0
.end method

.method private isBlockedWhenStarting()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlockedWhenStarting:Z

    return p0
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 2

    .line 641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x1

    .line 642
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 643
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsForBlockingHelper:Z

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private saveImportance()V
    .locals 2

    .line 444
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    const-string v1, "blocking_helper_stop_notifications"

    if-eq v0, v1, :cond_2

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 447
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateImportance()V

    :cond_2
    return-void
.end method

.method private updateImportance()V
    .locals 9

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 461
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    .line 462
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 463
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 464
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    .line 467
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlocked:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlockedWhenStarting:Z

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    move v7, v0

    .line 471
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 472
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 474
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;II)V

    .line 472
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private updateSecondaryText()V
    .locals 2

    .line 391
    sget v0, Lcom/android/systemui/R$id;->block_prompt:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz v1, :cond_0

    .line 393
    sget p0, Lcom/android/systemui/R$string;->notification_unblockable_desc:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getSelectedImportance()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 398
    sget p0, Lcom/android/systemui/R$string;->notification_channel_blocked:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 400
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->allow_notifications_guide_text:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 9

    .line 650
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    const/4 v1, 0x0

    .line 651
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getGutsTextColor(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 655
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getGutsTextColor(I)I

    move-result v0

    .line 657
    const-class v4, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v4}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 658
    const-class v4, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v5, 0x69

    invoke-interface {v4, v5}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v4

    const/16 v5, 0xff

    .line 659
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v5, v6, v7, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 660
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 663
    :cond_1
    sget v4, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 665
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    :cond_2
    sget v4, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 670
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    :cond_3
    sget v4, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 675
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    :cond_4
    sget v4, Lcom/android/systemui/R$id;->more_settings:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 679
    sget v5, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 680
    sget v6, Lcom/android/systemui/R$id;->minimize:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 681
    sget v7, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 684
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-eqz v5, :cond_6

    .line 687
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz v6, :cond_7

    .line 690
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    if-eqz v7, :cond_8

    .line 693
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    :cond_8
    sget v4, Lcom/android/systemui/R$id;->block_radio_alert:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_9

    .line 698
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 699
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v3, [[I

    new-array v8, v1, [I

    aput-object v8, v7, v1

    new-array v8, v3, [I

    aput v2, v8, v1

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 701
    :cond_9
    sget v4, Lcom/android/systemui/R$id;->block_radio_silent:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v4, :cond_a

    .line 703
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 704
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v3, [[I

    new-array v8, v1, [I

    aput-object v8, v7, v1

    new-array v3, v3, [I

    aput v2, v3, v1

    invoke-direct {v6, v7, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 707
    :cond_a
    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 708
    instance-of v3, v1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 709
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$drawable;->notification_guts_button_divider:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x4c

    .line 710
    invoke-static {v0, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 711
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 712
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 713
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :cond_b
    sget v1, Lcom/android/systemui/R$id;->block_prompt:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    .line 718
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 721
    :cond_c
    sget v0, Lcom/android/systemui/R$id;->app_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_d

    .line 723
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;ZZIZZ)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;",
            "ZZIZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v13, p12

    move/from16 v14, p13

    .line 223
    invoke-virtual/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;ZZZIZZ)V

    return-void
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;ZZZIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Landroid/service/notification/StatusBarNotification;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;",
            "Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$OnAppSettingsClickListener;",
            "ZZZIZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 248
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 249
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    .line 250
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 251
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    .line 252
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 253
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 254
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    .line 255
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 256
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 257
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    .line 258
    iput-boolean p14, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    .line 259
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    .line 260
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsForBlockingHelper:Z

    .line 261
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 262
    iput-boolean p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsDeviceProvisioned:Z

    .line 264
    iput-boolean p15, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNegativeUserSentiment:Z

    .line 265
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 266
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsForeground:Z

    .line 267
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    if-ne p1, p4, :cond_1

    move p1, p4

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsMinimized:Z

    .line 269
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    invoke-interface {p1, p3, p5, p2}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    .line 271
    iget p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz p3, :cond_3

    if-ne p3, p4, :cond_2

    .line 275
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 276
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p5, "miscellaneous"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-ne p1, p4, :cond_2

    move p2, p4

    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindHeader()V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindPrompt()V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindButtons()V

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateTextColorOnOpenThemeOrColoring()V

    .line 285
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 272
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method closeControls(Landroid/view/View;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 517
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 518
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 521
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 522
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 523
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 559
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->saveImportance()V

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimating()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$bindPrompt$1$SecNotificationInfo(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateSecondaryText()V

    xor-int/lit8 p1, p2, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsBlocked:Z

    return-void
.end method

.method public synthetic lambda$getSettingsOnClickListener$2$SecNotificationInfo(ILandroid/view/View;)V
    .locals 3

    const-string v0, "blocking_helper_notif_settings"

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->logBlockingHelperCounter(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;

    .line 420
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 419
    :goto_0
    invoke-interface {v0, p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method

.method public synthetic lambda$new$0$SecNotificationInfo(Landroid/view/View;)V
    .locals 3

    .line 129
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 130
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1128"

    .line 129
    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->isBlockedWhenStarting()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 136
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 137
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1126"

    .line 136
    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->closeControls(Landroid/view/View;)V

    return-void
.end method

.method logBlockingHelperCounter(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsForBlockingHelper:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 189
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 191
    sget v0, Lcom/android/systemui/R$id;->more_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    sget v1, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    if-eqz p0, :cond_1

    .line 197
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onFinishedClosing()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    :cond_0
    const-string v0, "blocking_helper_dismissed"

    .line 484
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mExitReason:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 491
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
