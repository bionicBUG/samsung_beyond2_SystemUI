.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.super Ljava/lang/Object;
.source "SemAutoEnhance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;
    }
.end annotation


# static fields
.field private static final TEMP_FILE_PATH:Ljava/lang/String;

.field private static tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/ae_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->TEMP_FILE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;->tempFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
