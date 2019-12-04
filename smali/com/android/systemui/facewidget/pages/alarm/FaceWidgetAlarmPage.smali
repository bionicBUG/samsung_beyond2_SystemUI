.class public Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.source "FaceWidgetAlarmPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceWidgetAlarmPage"


# instance fields
.field private final CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

.field private final CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

.field private mAlarmClickListener:Landroid/view/View$OnClickListener;

.field private mAlarmHolder:Landroid/widget/FrameLayout;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAmpmLeftView:Landroid/widget/TextView;

.field private mAmpmRightView:Landroid/widget/TextView;

.field private mDowDateView:Landroid/widget/TextView;

.field private mDowView:Landroid/widget/TextView;

.field private mIsNoAlarm:Z

.field private mNextAlarmContainerView:Landroid/widget/LinearLayout;

.field private mNoAlarmContainerView:Landroid/widget/LinearLayout;

.field private mNoAlarmImageView:Landroid/widget/ImageView;

.field private mTimeDescriptionView:Landroid/widget/TextView;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    new-instance p2, Lcom/android/systemui/facewidget/pages/alarm/-$$Lambda$FaceWidgetAlarmPage$7LwK0tyKmCKV_fFA1Kg6yySY8mA;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/alarm/-$$Lambda$FaceWidgetAlarmPage$7LwK0tyKmCKV_fFA1Kg6yySY8mA;-><init>(Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    const-string p2, "alarm"

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->clock_12hr_format:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->clock_24hr_format:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    return-void
.end method

.method private getTime(ZJ)Ljava/lang/String;
    .locals 2

    .line 367
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->CLOCK_FORMAT_24_SKEL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->CLOCK_FORMAT_12_SKEL:Ljava/lang/String;

    .line 367
    :goto_0
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "a"

    const-string v1, ""

    .line 369
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-direct {p0, p2, p3, p1}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 374
    invoke-static {p3, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAmpmLeft(Ljava/lang/String;J)Z
    .locals 1

    .line 361
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "hma"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 362
    invoke-static {p0, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 263
    invoke-direct {v0, v1}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->updateVisibility(Z)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshAlarmStatus() alarm is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 268
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x240c8400

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 272
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshAlarmStatus() beforeOneWeek = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", alarmTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", currentTime - alarmTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_15

    .line 275
    iget-object v6, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v6

    const-string v8, "EEE"

    .line 276
    invoke-direct {v0, v2, v3, v8}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-direct {v0, v6, v2, v3}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTime(ZJ)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    if-eqz v6, :cond_2

    move-object v11, v10

    goto :goto_1

    :cond_2
    const-string v11, "a"

    .line 278
    invoke-direct {v0, v2, v3, v11}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTimeByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    if-nez v6, :cond_3

    .line 279
    invoke-direct {v0, v11, v2, v3}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->isAmpmLeft(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 281
    :goto_2
    iget-object v13, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mDowView:Landroid/widget/TextView;

    if-eqz v13, :cond_4

    .line 282
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_4
    iget-object v13, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mDowDateView:Landroid/widget/TextView;

    const-string v15, ", "

    if-eqz v13, :cond_5

    const-string v13, "EEEE"

    .line 286
    invoke-static {v13}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "d"

    .line 287
    invoke-static {v14}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v7, "MMMM"

    invoke-direct {v14, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object v3, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mDowDateView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v13, v7, v14

    const/4 v13, 0x1

    aput-object v2, v7, v13

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const-string v1, "refreshAlarmStatus week = %s,  day = %s %s"

    invoke-static {v3, v1, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 294
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    if-nez v6, :cond_7

    if-eqz v12, :cond_7

    move-object v2, v11

    goto :goto_3

    :cond_7
    move-object v2, v10

    .line 298
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_8
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    if-nez v6, :cond_9

    if-nez v12, :cond_9

    move-object v10, v11

    .line 302
    :cond_9
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    const-wide/32 v2, 0xea60

    cmp-long v2, v4, v2

    if-gtz v2, :cond_b

    .line 307
    sget v2, Lcom/android/systemui/R$string;->facewidget_alarm_will_go_off_soon:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    const-wide/32 v1, 0x5265c00

    cmp-long v1, v4, v1

    if-gez v1, :cond_12

    .line 309
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 310
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v1

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    add-int/lit8 v7, v2, 0x1

    const/16 v2, 0x3c

    if-ne v7, v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x0

    :cond_c
    if-nez v1, :cond_d

    .line 318
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$plurals;->facewidget_alarm_in_minute:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_e

    .line 320
    iget-object v2, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$plurals;->facewidget_alarm_in_hour:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v10

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    if-ne v1, v4, :cond_10

    if-ne v7, v4, :cond_f

    .line 323
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->facewidget_alarm_in_one_hour_and_one_minute_format:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 325
    :cond_f
    iget-object v1, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->facewidget_alarm_in_one_hour_and_minutes_format:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_10
    const/4 v10, 0x0

    if-ne v7, v4, :cond_11

    .line 328
    iget-object v2, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->facewidget_alarm_in_hours_and_one_minute_format:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 330
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->facewidget_alarm_in_hours_and_minutes_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 333
    :cond_12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 334
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v1

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    long-to-int v2, v2

    if-lez v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    .line 336
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$plurals;->facewidget_alarm_in_day:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v5, v10

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_14
    :goto_4
    const/4 v10, 0x0

    .line 339
    :goto_5
    invoke-direct {v0, v10}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->updateVisibility(Z)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshAlarmStatus() alarm = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], is24Hour = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 342
    :cond_15
    invoke-direct {v0, v1}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->updateVisibility(Z)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshAlarmStatus() there is no alarm in next 7 days"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method private updateNaviBarPadding(Landroid/view/View;)V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    add-int/2addr v0, v1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    add-int/2addr v2, p0

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 225
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    add-int/2addr v3, p0

    .line 231
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateViewStyle(Z)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 217
    sget p1, Lcom/android/systemui/R$drawable;->lock_facewidget_no_content_ic_whitebg_alarm_mtrl:I

    goto :goto_0

    .line 218
    :cond_0
    sget p1, Lcom/android/systemui/R$drawable;->lock_facewidget_no_content_ic_alarm_mtrl:I

    .line 217
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4

    .line 348
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mIsNoAlarm:Z

    if-eq v0, p1, :cond_0

    .line 349
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mIsNoAlarm:Z

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 353
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    move v1, v2

    .line 356
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " isNoAlarm = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mIsNoAlarm:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "       "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "       next alarm container\'s visibility "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "       no alarm container\'s visibility "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_0

    sget p1, Lcom/android/systemui/R$layout;->facewidget_alarm_page_big:I

    goto :goto_0

    .line 160
    :cond_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_1

    sget p1, Lcom/android/systemui/R$layout;->facewidget_alarm_page_aod:I

    goto :goto_0

    .line 161
    :cond_1
    sget p1, Lcom/android/systemui/R$layout;->facewidget_alarm_page_small:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "servicebox_alarm"

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_Full"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    .line 166
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_next_alarm_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    .line 167
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_no_alarm_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_2

    .line 170
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 172
    sget v1, Lcom/android/systemui/R$string;->facewidget_alarm_no_alarm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->facewidget_app_choser_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 176
    new-instance v1, Lcom/android/systemui/facewidget/pages/alarm/-$$Lambda$FaceWidgetAlarmPage$2QEVEqszaL7PucttUp2uV-BCpjs;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/alarm/-$$Lambda$FaceWidgetAlarmPage$2QEVEqszaL7PucttUp2uV-BCpjs;-><init>(Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v1, Lcom/android/systemui/R$string;->facewidget_alarm_open_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 191
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_page_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->updateNaviBarPadding(Landroid/view/View;)V

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 198
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    :cond_4
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmImageView:Landroid/widget/ImageView;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 203
    sget v1, Lcom/android/systemui/R$string;->facewidget_alarm_no_alarm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_5
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeView:Landroid/widget/TextView;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_dow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mDowView:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_dow_and_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mDowDateView:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_ampm_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAmpmLeftView:Landroid/widget/TextView;

    .line 209
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_ampm_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAmpmRightView:Landroid/widget/TextView;

    .line 210
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_page_time_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mTimeDescriptionView:Landroid/widget/TextView;

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews()V

    return-void
.end method

.method public synthetic lambda$initViews$1$FaceWidgetAlarmPage(Landroid/view/View;)V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getKeyguardStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 185
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dismissFaceWidget()V

    return-void
.end method

.method public synthetic lambda$new$0$FaceWidgetAlarmPage(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 113
    sget v0, Lcom/android/systemui/R$id;->facewidget_alarm_page_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 1

    .line 379
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V

    .line 381
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateCompositeOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const-string v0, "next_alarm"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 3

    .line 118
    sget-object p2, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, p2, :cond_0

    const-string/jumbo p1, "top"

    .line 119
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->updateViewStyle(Z)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->getNextAlarmClocks(I)Ljava/util/List;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_3

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.sec.android.clockpackage.alarm.UPCOMING_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.samsung.sec.android.clockpackage.alarm.UPCOMING_BIXBY_BRIEFING_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    invoke-direct {p0, p2}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    return-void
.end method

.method public updateGravity(IZ)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v0, v1, :cond_6

    iget v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 245
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p2, v0, :cond_3

    :cond_2
    return-void

    .line 250
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNextAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_4

    .line 251
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 254
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/alarm/FaceWidgetAlarmPage;->mNoAlarmContainerView:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_5

    .line 255
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInFrameLayout(Landroid/view/View;I)V

    .line 258
    :cond_5
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    :cond_6
    :goto_0
    return-void
.end method
