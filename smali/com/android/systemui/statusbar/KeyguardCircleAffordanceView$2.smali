.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    return-void
.end method

.method public onFolderStateChanged(Z)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method
