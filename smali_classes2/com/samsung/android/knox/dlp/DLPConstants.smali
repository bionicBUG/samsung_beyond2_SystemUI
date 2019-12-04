.class public Lcom/samsung/android/knox/dlp/DLPConstants;
.super Ljava/lang/Object;
.source "DLPConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dlp/DLPConstants$DLPCallerType;,
        Lcom/samsung/android/knox/dlp/DLPConstants$DLPActionType;,
        Lcom/samsung/android/knox/dlp/DLPConstants$Optype;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static final FIXED_EXTENSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 85
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    sput-boolean v1, Lcom/samsung/android/knox/dlp/DLPConstants;->DBG:Z

    const-string v2, "xls"

    const-string v3, "xlsx"

    const-string v4, "doc"

    const-string v5, "docx"

    const-string v6, "ppt"

    const-string v7, "pptx"

    const-string v8, "pdf"

    const-string v9, "jpg"

    const-string v10, "jpeg"

    const-string v11, "zip"

    const-string v12, "mp4"

    const-string v13, "txt"

    const-string v14, "asd"

    const-string v15, "xlam"

    const-string v16, "htm"

    const-string v17, "html"

    const-string v18, "mht"

    const-string v19, "eml"

    const-string v20, "msg"

    const-string v21, "hwp"

    const-string v22, "gul"

    const-string v23, "rtf"

    const-string v24, "mysingle"

    const-string v25, "png"

    const-string v26, "gif"

    .line 122
    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConstants;->FIXED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
