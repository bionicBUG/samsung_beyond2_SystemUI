.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$wfCvigDI7LHHPPfAtVCWYwS8_SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$wfCvigDI7LHHPPfAtVCWYwS8_SY;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogControllerImpl$C$wfCvigDI7LHHPPfAtVCWYwS8_SY;->f$0:Ljava/util/Map$Entry;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->lambda$onShowVolumeLimiterToast$2(Ljava/util/Map$Entry;)V

    return-void
.end method
