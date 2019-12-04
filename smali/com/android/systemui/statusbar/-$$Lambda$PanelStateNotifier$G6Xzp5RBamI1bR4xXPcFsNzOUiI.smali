.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$G6Xzp5RBamI1bR4xXPcFsNzOUiI;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->lambda$notify$1(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
