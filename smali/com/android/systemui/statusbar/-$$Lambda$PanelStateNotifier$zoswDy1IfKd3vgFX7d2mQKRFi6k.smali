.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Intent;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;->f$0:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$PanelStateNotifier$zoswDy1IfKd3vgFX7d2mQKRFi6k;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->lambda$notify$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
