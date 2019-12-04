.class Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;
.super Ljava/lang/Object;
.source "EncodeAniGIFImage.java"

# interfaces
.implements Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/veconverter/EncodeAniGIFImage;->setProgressEventListener(Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/veconverter/EncodeAniGIFImage;


# direct methods
.method constructor <init>(Lcom/samsung/android/veconverter/EncodeAniGIFImage;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;->this$0:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;->this$0:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    invoke-static {p0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->access$000(Lcom/samsung/android/veconverter/EncodeAniGIFImage;)Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;->onCompleted()V

    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/veconverter/EncodeAniGIFImage$1;->this$0:Lcom/samsung/android/veconverter/EncodeAniGIFImage;

    invoke-static {p0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage;->access$000(Lcom/samsung/android/veconverter/EncodeAniGIFImage;)Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/veconverter/EncodeAniGIFImage$ProgressEventListener;->onStarted()V

    return-void
.end method
