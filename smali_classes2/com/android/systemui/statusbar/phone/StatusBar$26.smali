.class Lcom/android/systemui/statusbar/phone/StatusBar$26;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->setSwipeManagers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$swipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    .line 6296
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->val$swipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callUserActivity()V
    .locals 0

    .line 6308
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public onAffordanceTap()V
    .locals 0

    .line 6299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    .line 6313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->val$swipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    .line 6314
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    return-void
.end method
