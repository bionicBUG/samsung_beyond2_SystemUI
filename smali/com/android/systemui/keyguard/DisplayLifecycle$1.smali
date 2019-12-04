.class Lcom/android/systemui/keyguard/DisplayLifecycle$1;
.super Ljava/lang/Object;
.source "DisplayLifecycle.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/DisplayLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->access$000(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->access$200(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;->this$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->access$100(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    return-void
.end method
