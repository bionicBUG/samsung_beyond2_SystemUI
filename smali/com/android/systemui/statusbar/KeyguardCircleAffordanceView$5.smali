.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 327
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockMethodStateChanged()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 331
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    return-void
.end method
