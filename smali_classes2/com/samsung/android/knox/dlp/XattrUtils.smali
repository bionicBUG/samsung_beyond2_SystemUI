.class public Lcom/samsung/android/knox/dlp/XattrUtils;
.super Ljava/lang/Object;
.source "XattrUtils.java"


# static fields
.field private static final DBG:Z

.field protected static final DLP_SIGN_LEN:I

.field protected static final SEPARATOR_LEN:I

.field private static _instance:Lcom/samsung/android/knox/dlp/XattrUtils;

.field private static mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;


# instance fields
.field private final PATH_MNT_KNOX:Ljava/lang/String;

.field private final PATH_STORAGE_EMULATED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-boolean v0, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/knox/dlp/XattrUtils;->DBG:Z

    const/4 v0, 0x4

    .line 69
    sput v0, Lcom/samsung/android/knox/dlp/XattrUtils;->DLP_SIGN_LEN:I

    const/4 v0, 0x1

    .line 73
    sput v0, Lcom/samsung/android/knox/dlp/XattrUtils;->SEPARATOR_LEN:I

    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    .line 104
    sput-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->mDLPManagerPolicy:Lcom/samsung/android/knox/dlp/IDLPManagerPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/storage/emulated"

    .line 84
    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrUtils;->PATH_STORAGE_EMULATED:Ljava/lang/String;

    const-string v0, "/data/knox/sdcard"

    .line 85
    iput-object v0, p0, Lcom/samsung/android/knox/dlp/XattrUtils;->PATH_MNT_KNOX:Ljava/lang/String;

    return-void
.end method

.method public static getXattrUtilInstance()Lcom/samsung/android/knox/dlp/XattrUtils;
    .locals 2

    .line 95
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lcom/samsung/android/knox/dlp/XattrUtils;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/samsung/android/knox/dlp/XattrUtils;

    invoke-direct {v1}, Lcom/samsung/android/knox/dlp/XattrUtils;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/knox/dlp/XattrUtils;->_instance:Lcom/samsung/android/knox/dlp/XattrUtils;

    return-object v0
.end method
