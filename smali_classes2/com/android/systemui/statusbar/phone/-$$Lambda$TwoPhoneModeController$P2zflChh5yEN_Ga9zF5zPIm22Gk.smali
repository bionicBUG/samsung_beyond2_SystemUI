.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;->f$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;->f$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$TwoPhoneModeController$P2zflChh5yEN_Ga9zF5zPIm22Gk;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->lambda$showDoneToast$2$TwoPhoneModeController(I)V

    return-void
.end method
