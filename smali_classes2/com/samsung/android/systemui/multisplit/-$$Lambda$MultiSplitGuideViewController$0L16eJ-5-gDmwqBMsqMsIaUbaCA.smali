.class public final synthetic Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

.field private final synthetic f$1:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iput-object p2, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;->f$1:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$0L16eJ-5-gDmwqBMsqMsIaUbaCA;->f$1:Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->lambda$commitSnap$9$MultiSplitGuideViewController(Lcom/samsung/android/internal/policy/MultiSplitSnapAlgorithm$SnapTarget;)V

    return-void
.end method
