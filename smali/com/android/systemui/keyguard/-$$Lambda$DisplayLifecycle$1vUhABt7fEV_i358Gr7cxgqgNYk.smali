.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/-$$Lambda$DisplayLifecycle$1vUhABt7fEV_i358Gr7cxgqgNYk;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/view/Display;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dump$4(Ljava/io/PrintWriter;Landroid/view/Display;)V

    return-void
.end method
