.class public final synthetic Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$2$3Gn__BxnlrESI_3NLcFMJ8dCaqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$2$3Gn__BxnlrESI_3NLcFMJ8dCaqs;->f$0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitUiController$2$3Gn__BxnlrESI_3NLcFMJ8dCaqs;->f$0:Z

    invoke-static {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitUiController$2;->lambda$onLidStateChanged$0(Z)V

    return-void
.end method
