.class public Lcom/android/settingslib/utils/PowerUtil;
.super Ljava/lang/Object;
.source "PowerUtil.java"


# static fields
.field private static final FIFTEEN_MINUTES_MILLIS:J

.field private static final ONE_DAY_MILLIS:J

.field private static final ONE_HOUR_MILLIS:J

.field private static final SEVEN_MINUTES_MILLIS:J

.field private static final TWO_DAYS_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;D)Ljava/lang/CharSequence;
    .locals 5

    .line 304
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    .line 305
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1e

    const p2, 0x15180

    const/16 v1, 0xe10

    const/4 v2, 0x0

    if-lt p1, p2, :cond_1

    .line 312
    div-int v3, p1, p2

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    if-lt p1, v1, :cond_0

    .line 315
    div-int/2addr p1, v1

    move p2, p1

    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v2

    move p2, p1

    goto :goto_1

    :cond_1
    if-lt p1, v1, :cond_2

    .line 320
    div-int/lit16 p2, p1, 0xe10

    mul-int/lit16 v1, p2, 0xe10

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_3

    .line 324
    div-int/2addr p1, v1

    move v3, v2

    goto :goto_1

    :cond_3
    move p1, v2

    move v3, p1

    :goto_1
    const/4 v1, 0x2

    const/4 v4, 0x1

    if-lez v3, :cond_5

    if-nez p2, :cond_4

    .line 363
    sget p1, Lcom/android/settingslib/R$string;->sec_battery_history_days_no_hours:I

    new-array p2, v4, [Ljava/lang/Object;

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 366
    :cond_4
    sget p1, Lcom/android/settingslib/R$string;->sec_battery_history_days_with_hours:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 367
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    .line 366
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_5
    if-lez p2, :cond_7

    if-nez p1, :cond_6

    .line 371
    sget p1, Lcom/android/settingslib/R$string;->sec_battery_history_hours_no_minutes:I

    new-array v1, v4, [Ljava/lang/Object;

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    .line 371
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 374
    :cond_6
    sget v3, Lcom/android/settingslib/R$string;->sec_battery_history_hours_no_seconds:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    .line 374
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 378
    :cond_7
    sget p2, Lcom/android/settingslib/R$string;->sec_battery_history_minutes_no_seconds:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 381
    new-instance p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {p0}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    const-string p1, "minute"

    .line 382
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object p0

    .line 383
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    const/16 p2, 0x21

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    return-object v0
.end method

.method public static getBatteryRemainingShortStringFormatted(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 119
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getRegularTimeRemainingShortString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_1
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_duration_only_short:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanOneDayShortString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_4

    .line 72
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->SEVEN_MINUTES_MILLIS:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 74
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    long-to-double p1, v0

    .line 81
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    .line 84
    invoke-static {p0, p1, p3}, Lcom/android/settingslib/utils/PowerUtil;->getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->TWO_DAYS_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 87
    invoke-static {p0, p3}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_2
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_DAY_MILLIS:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settingslib/utils/PowerUtil;->getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDateTimeStringFromMs(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-wide p1, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 235
    invoke-static {v0, v1, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    .line 240
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object p0

    .line 242
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMoreThanOneDayShortString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 2

    .line 192
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    long-to-double p1, p1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    .line 196
    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMoreThanOneDayString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 168
    sget-wide v0, Lcom/android/settingslib/utils/PowerUtil;->ONE_HOUR_MILLIS:J

    invoke-static {p1, p2, v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    long-to-double p1, p1

    .line 173
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    .line 177
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 179
    sget p2, Lcom/android/settingslib/R$string;->power_remaining_duration_only_enhanced:I

    goto :goto_0

    .line 180
    :cond_0
    sget p2, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    :goto_0
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 181
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    .line 184
    sget p2, Lcom/android/settingslib/R$string;->power_discharging_duration_enhanced:I

    goto :goto_1

    .line 185
    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->power_discharging_duration:I

    :goto_1
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p3, p4, v0

    .line 186
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMoreThanTwoDaysString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 201
    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    .line 203
    new-instance v2, Landroid/icu/util/Measure;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v2, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 206
    sget p1, Lcom/android/settingslib/R$string;->power_remaining_only_more_than_subtext:I

    new-array v3, v5, [Ljava/lang/Object;

    new-array v4, v5, [Landroid/icu/util/Measure;

    aput-object v2, v4, v1

    .line 207
    invoke-virtual {v0, v4}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 206
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 208
    :cond_0
    sget v4, Lcom/android/settingslib/R$string;->power_remaining_more_than_subtext:I

    new-array v3, v3, [Ljava/lang/Object;

    new-array v6, v5, [Landroid/icu/util/Measure;

    aput-object v2, v6, v1

    .line 210
    invoke-virtual {v0, v6}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    aput-object p1, v3, v5

    .line 208
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRegularTimeRemainingShortString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-wide p1, Lcom/android/settingslib/utils/PowerUtil;->FIFTEEN_MINUTES_MILLIS:J

    .line 249
    invoke-static {v0, v1, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide p1

    .line 254
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 256
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    .line 257
    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 259
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_only_short:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRegularTimeRemainingString(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 217
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getDateTimeStringFromMs(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 219
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 221
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_only_enhanced:I

    goto :goto_0

    .line 222
    :cond_0
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_only:I

    :goto_0
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 223
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p4, :cond_2

    .line 226
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by_enhanced:I

    goto :goto_1

    .line 227
    :cond_2
    sget p2, Lcom/android/settingslib/R$string;->power_discharge_by:I

    :goto_1
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p3, p4, v0

    .line 228
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShutdownImminentString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget p1, Lcom/android/settingslib/R$string;->power_remaining_duration_only_shutdown_imminent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 150
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_duration_shutdown_imminent:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getUnderFifteenString(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 158
    sget p2, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration_only:I

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 159
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->power_remaining_less_than_duration:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static roundTimeToNearestThreshold(JJ)J
    .locals 4

    .line 281
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 282
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 283
    rem-long v0, p0, p2

    const-wide/16 v2, 0x2

    .line 284
    div-long v2, p2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sub-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-long/2addr p0, v0

    add-long/2addr p0, p2

    return-wide p0
.end method
