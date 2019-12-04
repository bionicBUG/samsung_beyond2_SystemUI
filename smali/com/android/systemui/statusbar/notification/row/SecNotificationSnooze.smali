.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;
.super Landroid/widget/LinearLayout;
.source "SecNotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;
    }
.end annotation


# static fields
.field private static final OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

.field private static final OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

.field private static final UNDO_LOG:Landroid/metrics/LogMaker;

.field private static final sAccessibilityActions:[I


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mDone:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mParser:Landroid/util/KeyValueListParser;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

.field private mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

.field private mSnoozeOptionContainer:Landroid/view/ViewGroup;

.field private mSnoozeOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 83
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x476

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    .line 86
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    .line 89
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v3, 0x475

    invoke-direct {v0, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 91
    invoke-virtual {v0, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    new-array v0, v3, [I

    .line 109
    sget v3, Lcom/android/systemui/R$id;->action_snooze_shorter:I

    const/4 v4, 0x0

    aput v3, v0, v4

    sget v3, Lcom/android/systemui/R$id;->action_snooze_short:I

    aput v3, v0, v2

    sget v2, Lcom/android/systemui/R$id;->action_snooze_long:I

    aput v2, v0, v1

    sget v1, Lcom/android/systemui/R$id;->action_snooze_longer:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->sAccessibilityActions:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 103
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mExpanded:Z

    .line 116
    new-instance p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 120
    new-instance p2, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p2, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindHeader()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 203
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 212
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0xc2200

    .line 211
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 225
    :cond_1
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->snooze_header_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    sget v0, Lcom/android/systemui/R$id;->snooze_header_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private closeSnoozeOption(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 234
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 237
    aget v4, v2, v0

    aget v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    const/4 v3, 0x1

    .line 238
    aget v2, v2, v3

    aget v1, v1, v3

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 239
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, v4, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 10

    .line 354
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 357
    sget v5, Lcom/android/systemui/R$plurals;->snoozeHourOptions:I

    goto :goto_1

    .line 358
    :cond_1
    sget v5, Lcom/android/systemui/R$plurals;->snoozeMinuteOptions:I

    :goto_1
    if-eqz v1, :cond_2

    .line 359
    div-int/lit8 v1, p1, 0x3c

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    new-array v6, v2, [Ljava/lang/Object;

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 361
    sget v1, Lcom/android/systemui/R$string;->snoozed_for_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 362
    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v7, p2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 365
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v8

    .line 367
    :cond_3
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 368
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 369
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    .line 368
    invoke-virtual {v8, v1, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 370
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p0

    move v3, p1

    move-object v4, v5

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-object v9
.end method

.method private createOptionViews()V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    move v2, v1

    .line 378
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 380
    sget v4, Lcom/android/systemui/R$layout;->sec_notification_snooze_option:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 382
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 383
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 385
    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v5, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 387
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 412
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getMinutesToSnoozeFor()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 413
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    invoke-direct {p2, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 414
    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x474

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/16 v0, 0x473

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V
    .locals 4

    .line 393
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 397
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 399
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 400
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p2, 0x472

    .line 406
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    :cond_2
    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 7

    .line 514
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    const/4 v1, 0x0

    .line 515
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getGutsTextColor(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 519
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;->getGutsTextColor(I)I

    move-result v0

    .line 521
    const-class v3, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v3}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    const-class v3, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v4, 0x69

    invoke-interface {v3, v4}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v3

    const/16 v4, 0xff

    .line 523
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 524
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 527
    :cond_1
    sget v3, Lcom/android/systemui/R$id;->snooze_header_title:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 530
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 534
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 537
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 538
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$drawable;->notification_guts_button_divider:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0x4c

    .line 539
    invoke-static {v0, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 540
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 541
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 542
    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 547
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    :cond_4
    sget v3, Lcom/android/systemui/R$id;->snooze_guide_text:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 552
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 558
    instance-of v3, v0, Landroid/widget/RadioButton;

    if-eqz v3, :cond_6

    .line 559
    check-cast v0, Landroid/widget/RadioButton;

    .line 561
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 0

    .line 433
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return-object p0
.end method

.method getDefaultOption()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    return-object p0
.end method

.method getDefaultSnoozeOptions()Ljava/util/ArrayList;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_snooze_options"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "NotificationSnooze"

    const-string v3, "Bad snooze constants"

    .line 334
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v3, Lcom/android/systemui/R$integer;->config_notification_snooze_time_default:I

    .line 338
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string v4, "default"

    .line 337
    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 339
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    sget v4, Lcom/android/systemui/R$array;->config_notification_snooze_times:I

    .line 340
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v4, "options_array"

    .line 339
    invoke-virtual {v3, v4, v0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 342
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->sAccessibilityActions:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 343
    aget v5, v0, v3

    .line 344
    aget v4, v4, v3

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOption(II)Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    move-result-object v4

    if-eqz v3, :cond_0

    if-ne v5, v2, :cond_1

    .line 346
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 348
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mExpanded:Z

    return p0
.end method

.method public isLeavebehind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$SecNotificationSnooze(Landroid/view/View;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->UNDO_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 153
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 154
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1131"

    .line 153
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$SecNotificationSnooze(Landroid/view/View;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;->snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    .line 171
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->access$000(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1130"

    .line 171
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_CLOSE_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->closeSnoozeOption(Landroid/view/View;)V

    .line 183
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 184
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1132"

    .line 183
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 244
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->OPTIONS_OPEN_LOG:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/16 v1, 0x471

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->logOptionSelection(ILcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 424
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 138
    sget v0, Lcom/android/systemui/R$id;->snooze_options:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptionContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$wdapgg3Ip0M1CYiKG35ujmpbmUo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$wdapgg3Ip0M1CYiKG35ujmpbmUo;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOptionViews()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDefaultOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    .line 146
    sget v0, Lcom/android/systemui/R$id;->snooze_cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationSnooze$9e0Y5t2EmFHLTFw80vay5AT0xKg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationSnooze$9e0Y5t2EmFHLTFw80vay5AT0xKg;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    sget v0, Lcom/android/systemui/R$id;->snooze_save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationSnooze$YooRq1BcmVS6ZrOzqvZBECVTRVo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$SecNotificationSnooze$YooRq1BcmVS6ZrOzqvZBECVTRVo;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mCancel:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 193
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mDone:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSelectedOption:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 261
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 262
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/systemui/R$id;->action_snooze_undo:I

    .line 263
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->snooze_undo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    .line 275
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    move v1, p2

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;

    .line 280
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 281
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;->getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 282
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->setSelected(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;Z)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method setKeyValueListParser(Landroid/util/KeyValueListParser;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method

.method public setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeListener:Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    return-void
.end method

.method public setSnoozeOptions(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->updateTextColorOnOpenThemeOrColoring()V

    if-nez p1, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->getDefaultSnoozeOptions()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    .line 299
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/service/notification/SnoozeCriterion;

    .line 302
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/systemui/R$id;->action_snooze_assistant_suggestion_1:I

    .line 303
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozeOptions:Ljava/util/List;

    new-instance v10, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;

    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getExplanation()Ljava/lang/CharSequence;

    move-result-object v7

    .line 305
    invoke-virtual {v5}, Landroid/service/notification/SnoozeCriterion;->getConfirmation()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 304
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->createOptionViews()V

    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->bindHeader()V

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;->mSnoozing:Z

    return p0
.end method
