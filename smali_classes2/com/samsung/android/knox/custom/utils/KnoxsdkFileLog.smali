.class public final Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;
.super Ljava/lang/Object;
.source "KnoxsdkFileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$KnoxsdkFileLogHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "knoxsdk/filelog"

.field private static sLogger:Ljava/util/logging/Logger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 6

    .line 43
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v2, "/data/log/knoxsdk.log"

    const v3, 0x7a120

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 46
    new-instance v2, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog$1;-><init>(Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 58
    const-class v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    .line 59
    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 60
    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 61
    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->sLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 62
    sget-object v0, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    const-string v1, "init success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    sget-object v1, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
