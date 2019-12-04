.class public Lcom/samsung/android/knox/dlp/XattrManager;
.super Ljava/lang/Object;
.source "XattrManager.java"


# static fields
.field public static final DBG:Z

.field private static _instance:Lcom/samsung/android/knox/dlp/XattrManager;

.field private static sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;


# instance fields
.field private DEVICE_ID:Ljava/lang/String;

.field private DLP_DEV_ID_LEN:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-boolean v0, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/knox/dlp/XattrManager;->DBG:Z

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->_instance:Lcom/samsung/android/knox/dlp/XattrManager;

    .line 40
    sput-object v0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    :try_start_0
    const-string v0, "dlp_sdk"

    .line 53
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load library for libDLP_sdk failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLP_XattrManager_ksdk"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/dlp/log/DLPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrManager;->DEVICE_ID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/samsung/android/knox/dlp/XattrManager;->DLP_DEV_ID_LEN:I

    .line 42
    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrManager;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Lcom/samsung/android/knox/dlp/XattrUtils;->getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/knox/dlp/XattrManager;->sXattrUtil:Lcom/samsung/android/knox/dlp/XattrUtils;

    return-void
.end method
