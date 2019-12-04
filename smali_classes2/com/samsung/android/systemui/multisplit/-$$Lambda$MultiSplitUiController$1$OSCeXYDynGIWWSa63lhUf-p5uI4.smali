.class public final synthetic Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$1$OSCeXYDynGIWWSa63lhUf-p5uI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$1$OSCeXYDynGIWWSa63lhUf-p5uI4;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$1$OSCeXYDynGIWWSa63lhUf-p5uI4;->f$0:I

    invoke-static {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$1;->lambda$onModeChanged$0(I)V

    return-void
.end method
