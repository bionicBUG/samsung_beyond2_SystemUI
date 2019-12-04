.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$2LCvhYvor9KUdkD8Lozm_8CbJlE;->f$1:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$2$OverviewProxyService$1(Landroid/view/MotionEvent;)V

    return-void
.end method
