.class public Lcom/samsung/android/veconverter/EncodeAniGIFImage;
.super Ljava/lang/Object;
.source "EncodeAniGIFImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;
    }
.end annotation


# instance fields
.field private mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

.field private mProgressEventListener:Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/veconverter/core/EncodeImages;

    invoke-direct {v0}, Lcom/samsung/android/veconverter/core/EncodeImages;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/veconverter/EncodeAniGIFImage;)Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mProgressEventListener:Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;

    return-object p0
.end method


# virtual methods
.method public encode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->encode()V

    return-void
.end method

.method public getExportprogress()I
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/EncodeImages;->getProgress()I

    move-result p0

    return p0
.end method

.method public initialize(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/veconverter/core/EncodeImages;->initialize(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public setProgressEventListener(Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;)V
    .locals 1

    .line 83
    iput-object p1, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mProgressEventListener:Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    new-instance v0, Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;-><init>(Lcom/samsung/android/veconverter/EncodeAniGIFImage;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/veconverter/core/Encode;->setProgressUpdateListener(Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->mEncodeImages:Lcom/samsung/android/veconverter/core/EncodeImages;

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/EncodeImages;->stop()V

    return-void
.end method
