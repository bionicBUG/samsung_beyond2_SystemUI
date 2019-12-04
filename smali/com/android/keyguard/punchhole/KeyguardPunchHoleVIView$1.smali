.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;
.super Ljava/lang/Object;
.source "KeyguardPunchHoleVIView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    return-void
.end method
