.class public final synthetic Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iput-object p2, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;->f$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/-$$Lambda$MultiSplitGuideViewController$N8xjOQsjLr-42QBDywHVpiPkW9E;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->lambda$requestHide$7$MultiSplitGuideViewController(Ljava/lang/Runnable;)V

    return-void
.end method
