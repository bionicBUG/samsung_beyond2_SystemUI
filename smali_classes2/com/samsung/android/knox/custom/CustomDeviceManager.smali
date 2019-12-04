.class public Lcom/samsung/android/knox/custom/CustomDeviceManager;
.super Ljava/lang/Object;
.source "CustomDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    }
.end annotation


# static fields
.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/knox/custom/CustomDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-class v0, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    monitor-enter v0

    .line 1728
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    if-nez v1, :cond_0

    .line 1729
    new-instance v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/CustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 1731
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    .line 1732
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 1734
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/CustomDeviceManager;->sCustomDeviceManager:Lcom/samsung/android/knox/custom/CustomDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public earlierSdk(Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1957
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string p0, "22"

    .line 1906
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const-string v0, "30"

    .line 1909
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz p0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    .line 1912
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-lt p0, v1, :cond_1

    const/4 v1, 0x6

    if-gt p0, v1, :cond_1

    .line 1914
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_1
    const/4 v1, 0x7

    if-lt p0, v1, :cond_2

    const/16 v1, 0x9

    if-gt p0, v1, :cond_2

    .line 1916
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_2
    const/16 v1, 0xa

    if-lt p0, v1, :cond_3

    const/16 v1, 0xb

    if-gt p0, v1, :cond_3

    .line 1918
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_6:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_3
    const/16 v1, 0xc

    if-ne p0, v1, :cond_4

    .line 1920
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_4
    const/16 v1, 0xd

    if-ne p0, v1, :cond_5

    .line 1922
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_7_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_5
    const/16 v1, 0xe

    if-ne p0, v1, :cond_6

    .line 1924
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_8:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_6
    const/16 v1, 0xf

    if-ne p0, v1, :cond_7

    .line 1926
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_2_9:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_7
    const/16 p0, 0x18

    if-ne v0, p0, :cond_8

    .line 1928
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_0:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_8
    const/16 p0, 0x19

    if-ne v0, p0, :cond_9

    .line 1930
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_9
    const/16 p0, 0x1a

    if-ne v0, p0, :cond_a

    .line 1932
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_a
    const/16 p0, 0x1b

    if-ne v0, p0, :cond_b

    .line 1934
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_2_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_b
    const/16 p0, 0x1c

    if-ne v0, p0, :cond_c

    .line 1936
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_3:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_c
    const/16 p0, 0x1d

    if-ne v0, p0, :cond_d

    .line 1938
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_d
    const/16 p0, 0x1e

    if-ne v0, p0, :cond_e

    .line 1940
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_4_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    :cond_e
    const/16 p0, 0x1f

    if-lt v0, p0, :cond_f

    .line 1942
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_3_5:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0

    .line 1944
    :cond_f
    sget-object p0, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->SDK_VERSION_1:Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    return-object p0
.end method
